.class public final Lcom/android/launcher/bottomsearch/IBottomSearch$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/bottomsearch/IBottomSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lcom/android/launcher/bottomsearch/IBottomSearch$Companion;

.field public static final CHROME_SEARCH_PACKAGE:Ljava/lang/String; = "com.android.chrome"

.field public static final CHROME_SEARCH_WIDGET_PROVIDER:Ljava/lang/String; = "org.chromium.chrome.browser.searchwidget.SearchWidgetProvider"

.field public static final COMMON_TAG:Ljava/lang/String; = "BOTTOM.WIDGET - "

.field public static final GOOGLE_SEARCH_PACKAGE:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field public static final GOOGLE_SEARCH_WIDGET_PROVIDER:Ljava/lang/String; = "com.google.android.googlequicksearchbox.SearchWidgetProvider"

.field public static final KEY_IS_SHOW_SEARCH_BOX:Ljava/lang/String; = "key_is_show_search_box"

.field public static final KEY_RESTORE_FROM_BACKUP:Ljava/lang/String; = "key_store_from_backup"

.field public static final OPLUS_BROWSER_PACKAGE_NAME:Ljava/lang/String; = "com.heytap.browser"

.field public static final OPLUS_BROWSER_PROVIDER_1_CLASS_NAME:Ljava/lang/String; = "com.android.browser.widget.DefaultSearchWidgetProvider"

.field public static final OPLUS_BROWSER_PROVIDER_2_CLASS_NAME:Ljava/lang/String; = "com.android.browser.widget.NaviSearchWidgetProvider"

.field public static final OPLUS_BROWSER_SETTING_ACTION:Ljava/lang/String; = "com.heytap.browser.action.WIDGET_SETTING"

.field public static final OPLUS_BROWSER_SETTING_CLASS_NAME:Ljava/lang/String; = "com.heytap.browser.settings.component.WidgetSettingActivity"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/bottomsearch/IBottomSearch$Companion;

    invoke-direct {v0}, Lcom/android/launcher/bottomsearch/IBottomSearch$Companion;-><init>()V

    sput-object v0, Lcom/android/launcher/bottomsearch/IBottomSearch$Companion;->$$INSTANCE:Lcom/android/launcher/bottomsearch/IBottomSearch$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
