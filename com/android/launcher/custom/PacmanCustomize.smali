.class public final Lcom/android/launcher/custom/PacmanCustomize;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ACTION_CANCEL:Ljava/lang/String; = "net.oneplus.launcher.ACTION_CANCEL"

.field private static final ACTION_TIMES_UP:Ljava/lang/String; = "net.oneplus.launcher.TIMES_UP"

.field public static final INSTANCE:Lcom/android/launcher/custom/PacmanCustomize;

.field private static final PKG_WIDGET_COMP:Ljava/lang/String; = "net.oneplus.widget.appwidget.TimeReceiver"

.field private static final TAG:Ljava/lang/String; = "PacmanCustomize"

.field private static final filter$delegate:Ly2/e;

.field private static final mTimeReceiver:Landroid/content/BroadcastReceiver;

.field private static mTimeReceiverRegistered:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/custom/PacmanCustomize;

    invoke-direct {v0}, Lcom/android/launcher/custom/PacmanCustomize;-><init>()V

    sput-object v0, Lcom/android/launcher/custom/PacmanCustomize;->INSTANCE:Lcom/android/launcher/custom/PacmanCustomize;

    new-instance v0, Lcom/android/launcher/custom/PacmanCustomize$mTimeReceiver$1;

    invoke-direct {v0}, Lcom/android/launcher/custom/PacmanCustomize$mTimeReceiver$1;-><init>()V

    sput-object v0, Lcom/android/launcher/custom/PacmanCustomize;->mTimeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v0, Lcom/android/launcher/custom/PacmanCustomize$filter$2;->INSTANCE:Lcom/android/launcher/custom/PacmanCustomize$filter$2;

    invoke-static {v0}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/custom/PacmanCustomize;->filter$delegate:Ly2/e;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFilter()Landroid/content/IntentFilter;
    .registers 1

    sget-object p0, Lcom/android/launcher/custom/PacmanCustomize;->filter$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/IntentFilter;

    return-object p0
.end method

.method public final getMTimeReceiver()Landroid/content/BroadcastReceiver;
    .registers 1

    sget-object p0, Lcom/android/launcher/custom/PacmanCustomize;->mTimeReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method public final getWidgetPreview(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 6

    new-instance p0, Landroid/content/ComponentName;

    sget-object v0, Lcom/android/common/config/Constants$Packages;->DOMESTIC_SALES_OPWIDGET_PACKAGENAME:Ljava/lang/String;

    sget-object v1, Lcom/android/common/config/Constants$Packages;->OPLUS_OPWIDGET_CLOCK_WIDGET_CLASSNAME:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    const p0, 0x7f080743

    goto :goto_14

    :cond_13
    const/4 p0, -0x1

    :goto_14
    if-lez p0, :cond_25

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    :cond_25
    return-object p3
.end method

.method public final registerReceiver(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isPacMan()Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-boolean v0, Lcom/android/launcher/custom/PacmanCustomize;->mTimeReceiverRegistered:Z

    if-nez v0, :cond_1b

    if-nez p1, :cond_f

    goto :goto_18

    :cond_f
    sget-object v0, Lcom/android/launcher/custom/PacmanCustomize;->mTimeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/launcher/custom/PacmanCustomize;->getFilter()Landroid/content/IntentFilter;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_18
    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/launcher/custom/PacmanCustomize;->mTimeReceiverRegistered:Z

    :cond_1b
    return-void
.end method

.method public final sendPMMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    if-nez p2, :cond_3

    goto :goto_59

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p2, "android.intent.action.TIME_TICK"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    sget-object p2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p2}, Lcom/android/common/util/AppFeatureUtils;->isPacMan()Z

    move-result p2

    if-eqz p2, :cond_59

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    sget-object v0, Lcom/android/common/config/Constants$Packages;->DOMESTIC_SALES_OPWIDGET_PACKAGENAME:Ljava/lang/String;

    const-string/jumbo v1, "net.oneplus.widget.appwidget.TimeReceiver"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const-string/jumbo v1, "net.oneplus.launcher.TIMES_UP"

    if-eqz p0, :cond_45

    if-nez v0, :cond_45

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-nez p1, :cond_39

    goto :goto_3c

    :cond_39
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_3c
    const-string p0, "PacmanCustomize"

    const-string/jumbo p1, "timeTick on the hour "

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_59

    :cond_45
    if-nez p0, :cond_59

    if-nez v0, :cond_4d

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_53

    :cond_4d
    const-string/jumbo p0, "net.oneplus.launcher.ACTION_CANCEL"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_53
    if-nez p1, :cond_56

    goto :goto_59

    :cond_56
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_59
    :goto_59
    return-void
.end method

.method public final unregisterReceiver(Landroid/content/Context;)V
    .registers 2

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isPacMan()Z

    move-result p0

    if-eqz p0, :cond_14

    sget-boolean p0, Lcom/android/launcher/custom/PacmanCustomize;->mTimeReceiverRegistered:Z

    if-eqz p0, :cond_14

    sget-object p0, Lcom/android/launcher/custom/PacmanCustomize;->mTimeReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p1, p0}, Lcom/android/launcher3/Utilities;->unregisterReceiverSafely(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/launcher/custom/PacmanCustomize;->mTimeReceiverRegistered:Z

    :cond_14
    return-void
.end method
