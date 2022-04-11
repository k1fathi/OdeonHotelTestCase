using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Reflection;

namespace WebApp.Common
{
    public static class EnumUtil
    {
        public static string GetDisplayNameOrDefault(this Enum value)
        {

            var enumType = value?.GetType();
            var enumMemberName = Enum.GetName(enumType, value);
            return enumType
                .GetMemberAttribute<DisplayAttribute>(enumMemberName)
                ?.GetName()
                ?? enumMemberName;
        }
        public static TAttribute GetMemberAttribute<TAttribute>(this Type type, string memberName) where TAttribute : Attribute =>
         type.GetMember(memberName).SingleOrDefault()?.GetCustomAttribute<TAttribute>();
    }
}
