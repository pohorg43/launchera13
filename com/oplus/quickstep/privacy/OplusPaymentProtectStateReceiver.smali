.class public final Lcom/oplus/quickstep/privacy/OplusPaymentProtectStateReceiver;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ACTION_SECURE_PAY_RESET_SWITCH:Ljava/lang/String; = "oplus.intent.action.SECURE_PAY_RESET_SWITCH"

.field public static final INSTANCE:Lcom/oplus/quickstep/privacy/OplusPaymentProtectStateReceiver;

.field private static final KEY_PKG:Ljava/lang/String; = "secure_pkg_name"

.field private static final KEY_SWITCH:Ljava/lang/String; = "secure_switch"

.field private static final TAG:Ljava/lang/String; = "OplusPaymentProtectReceiver"

.field private static final filter$delegate:Ly2/e;

.field private static isRegistered:Z

.field private static final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/privacy/OplusPaymentProtectStateReceiver;

    invoke-direct {v0}, Lcom/oplus/quickstep/privacy/OplusPaymentProtectStateReceiver;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/privacy/OplusPaymentProtectStateReceiver;->INSTANCE:Lcom/oplus/quickstep/privacy/OplusPaymentProtectStateReceiver;

    new-instance v0, Lcom/oplus/quickstep/privacy/OplusPaymentProtectStateReceiver$receiver$1;

    invoke-direct {v0}, Lcom/oplus/quickstep/privacy/OplusPaymentProtectStateReceiver$receiver$1;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/privacy/OplusPaymentProtectStateReceiver;->receiver:Landroid/content/BroadcastReceiver;

    sget-object v0, Lcom/oplus/quickstep/privacy/OplusPaymentProtectStateReceiver$filter$2;->INSTANCE:Lcom/oplus/quickstep/privacy/OplusPaymentProtectStateReceiver$filter$2;

    invoke-static {v0}, Ly2/f;->a(Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v0

    sput-object v0, Lcom/oplus/quickstep/privacy/OplusPaymentProtectStateReceiver;->filter$delegate:Ly2/e;

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

    sget-object p0, Lcom/oplus/quickstep/privacy/OplusPaymentProtectStateReceiver;->filter$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/IntentFilter;

    return-object p0
.end method

.method public final getReceiver()Landroid/content/BroadcastReceiver;
    .registers 1

    sget-object p0, Lcom/oplus/quickstep/privacy/OplusPaymentProtectStateReceiver;->receiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method public final registerReceiver(Landroid/content/Context;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "QuickStep"

    const-string v1, "OplusPaymentProtectReceiver"

    const-string v2, "registerReceiver()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oplus/quickstep/privacy/OplusPaymentProtectStateReceiver;->isRegistered:Z

    sget-object v0, Lcom/oplus/quickstep/privacy/OplusPaymentProtectStateReceiver;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/oplus/quickstep/privacy/OplusPaymentProtectStateReceiver;->getFilter()Landroid/content/IntentFilter;

    move-result-object p0

    const-string v1, "oplus.permission.OPLUS_COMPONENT_SAFE"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final unregisterReceiver(Landroid/content/Context;)V
    .registers 4

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean p0, Lcom/oplus/quickstep/privacy/OplusPaymentProtectStateReceiver;->isRegistered:Z

    const-string v0, "OplusPaymentProtectReceiver"

    const-string v1, "QuickStep"

    if-eqz p0, :cond_1b

    const-string p0, "unregisterReceiver()"

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/oplus/quickstep/privacy/OplusPaymentProtectStateReceiver;->isRegistered:Z

    sget-object p0, Lcom/oplus/quickstep/privacy/OplusPaymentProtectStateReceiver;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_20

    :cond_1b
    const-string p0, "unregisterReceiver(), This receiver is not registered !"

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_20
    return-void
.end method
