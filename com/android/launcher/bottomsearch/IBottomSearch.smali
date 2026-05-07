.class public interface abstract Lcom/android/launcher/bottomsearch/IBottomSearch;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/ILauncherLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/bottomsearch/IBottomSearch$Companion;,
        Lcom/android/launcher/bottomsearch/IBottomSearch$DefaultImpls;
    }
.end annotation


# static fields
.field public static final CHROME_SEARCH_PACKAGE:Ljava/lang/String; = "com.android.chrome"

.field public static final CHROME_SEARCH_WIDGET_PROVIDER:Ljava/lang/String; = "org.chromium.chrome.browser.searchwidget.SearchWidgetProvider"

.field public static final COMMON_TAG:Ljava/lang/String; = "BOTTOM.WIDGET - "

.field public static final Companion:Lcom/android/launcher/bottomsearch/IBottomSearch$Companion;

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
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/android/launcher/bottomsearch/IBottomSearch$Companion;->$$INSTANCE:Lcom/android/launcher/bottomsearch/IBottomSearch$Companion;

    sput-object v0, Lcom/android/launcher/bottomsearch/IBottomSearch;->Companion:Lcom/android/launcher/bottomsearch/IBottomSearch$Companion;

    return-void
.end method


# virtual methods
.method public abstract addOrDeleteBottomWidget(Lcom/android/launcher3/Launcher;)V
.end method

.method public abstract featureSupport()Z
.end method

.method public abstract getAppWidgetId(Landroid/content/Context;)I
.end method

.method public abstract getBottomSearchHeight(Landroid/content/Context;)I
.end method

.method public abstract getBottomView()Landroid/view/View;
.end method

.method public abstract getBrowserSettingIntent(ZLandroid/content/Context;)Landroid/content/Intent;
.end method

.method public abstract getMPreferenceTitle()I
.end method

.method public abstract getSettingShortcut()Lcom/android/launcher3/popup/SystemShortcut$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/popup/SystemShortcut$Factory<",
            "Lcom/android/launcher/Launcher;",
            ">;"
        }
    .end annotation
.end method

.method public abstract initSwitchStatus(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract isBottomEnable(Landroid/content/Context;)Z
.end method

.method public abstract isBottomSearchWidget(Landroid/content/ComponentName;)Z
.end method

.method public abstract isBottomSearchWidget(Ljava/lang/String;)Z
.end method

.method public abstract isBottomWidgetAdded(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lkotlin/jvm/functions/Function1;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract launcherSupport(Lcom/android/launcher3/Launcher;)Z
.end method

.method public abstract needDeleteWidget(Landroid/content/Context;Landroid/content/ComponentName;Z)Z
.end method

.method public abstract onRestoreLauncher(Landroid/content/Context;Z)V
.end method

.method public abstract removeBottomWidget(Landroid/content/ComponentName;Lcom/android/launcher/Launcher;)Z
.end method

.method public abstract requestAddOrDeleteBottomWidget(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZZLkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "ZZ",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract setBottomView(Landroid/view/View;)V
.end method

.method public abstract setMPreferenceTitle(I)V
.end method
