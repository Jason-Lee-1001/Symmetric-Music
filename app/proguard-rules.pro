# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /Users/Jason/Library/Android/sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# 指定代码的压缩级别
-optimizationpasses 5
# 是否使用大小写混合
-dontusemixedcaseclassnames
# 混淆时是否做预校验
-dontpreverify
# 混淆时是否记录日志
-verbose
#保持com.umeng.**这个包里面的所有类和所有方法不被混淆。(没有友盟的集成时删除此句)
-dontwarn com.umeng.**
# 混淆时所采用的算法
-optimizations !code/simplification/arithmetic,!field/*,!class/merging/*

# 保持哪些类不被混淆
-keep public class * extends android.app.Application
# 保持哪些类不被混淆
-keep public class * extends android.app.Service
# 保持哪些类不被混淆
-keep public class * extends android.content.BroadcastReceiver
# 保持哪些类不被混淆
-keep public class * extends android.content.ContentProvider
# 保持哪些类不被混淆
-keep public class * extends android.app.backup.BackupAgentHelper
# 保持哪些类不被混淆
-keep public class * extends android.preference.Preference
# 保持哪些类不被混淆
-keep public class com.android.vending.licensing.ILicensingService

# 保持 native 方法不被混淆
-keepclasseswithmembernames class * {
    native <methods>;
}
# 保持自定义控件类不被混淆
-keepclasseswithmembers class * {
    public <init>(android.content.Context, android.util.AttributeSet);
}
# 保持自定义控件类不被混淆
-keepclasseswithmembers class * {
    public <init>(android.content.Context, android.util.AttributeSet, int);
}
# 保持自定义控件类不被混淆
-keepclassmembers class * extends android.app.Activity {
    public void *(android.view.View);
}
# 保持枚举 enum 类不被混淆
-keepclassmembers enum * {
 public static **[] values();
 public static ** valueOf(java.lang.String);
}
# 保持 Parcelable 不被混淆
-keep class * implements android.os.Parcelable {
 public static final android.os.Parcelable$Creator *;
}