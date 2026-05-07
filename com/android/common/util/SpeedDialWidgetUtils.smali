.class public final Lcom/android/common/util/SpeedDialWidgetUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/common/util/SpeedDialWidgetUtils;

.field public static final SPEED_DIAL_WIDGET_CLASS:Ljava/lang/String; = "com.android.contacts.speeddialwidget.SpeedDialWidgetProvider"

.field public static final SPEED_DIAL_WIDGET_CLASS_NEW:Ljava/lang/String; = "com.android.contacts.speeddialwidget.SpeedDialWidget"

.field public static final SPEED_DIAL_WIDGET_TITLE_CLASS:Ljava/lang/String; = "com.android.contacts.speeddialwidget.SpeedDialWidgetProviderTitle"

.field public static final SPEED_DIAL_WIDGET_TITLE_CLASS_NEW:Ljava/lang/String; = "com.android.contacts.speeddialwidget.SpeedDialWidgetTitle"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/util/SpeedDialWidgetUtils;

    invoke-direct {v0}, Lcom/android/common/util/SpeedDialWidgetUtils;-><init>()V

    sput-object v0, Lcom/android/common/util/SpeedDialWidgetUtils;->INSTANCE:Lcom/android/common/util/SpeedDialWidgetUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isSpeedDialWidgetInstalled(Landroid/content/Context;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/widget/WidgetManagerHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getAllProviders(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.contacts.speeddialwidget.SpeedDialWidgetProvider"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    const-string v1, "com.android.contacts.speeddialwidget.SpeedDialWidget"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    const-string v1, "com.android.contacts.speeddialwidget.SpeedDialWidgetProviderTitle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    const-string v1, "com.android.contacts.speeddialwidget.SpeedDialWidgetTitle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_45
    const/4 p0, 0x1

    return p0

    :cond_47
    const/4 p0, 0x0

    return p0
.end method

.method public static final shouldFilterSpeedDialWidget(Landroid/content/ComponentName;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->isInBigSimpleMode()Z

    move-result v1

    if-nez v1, :cond_33

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.android.contacts.speeddialwidget.SpeedDialWidgetProvider"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    const-string v1, "com.android.contacts.speeddialwidget.SpeedDialWidget"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    const-string v1, "com.android.contacts.speeddialwidget.SpeedDialWidgetProviderTitle"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    const-string v1, "com.android.contacts.speeddialwidget.SpeedDialWidgetTitle"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_33

    :cond_32
    return v0

    :cond_33
    const/4 p0, 0x0

    return p0
.end method
