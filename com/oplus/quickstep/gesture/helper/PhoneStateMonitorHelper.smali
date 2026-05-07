.class public final Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$INSTANCE;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$INSTANCE;

.field private static final TAG:Ljava/lang/String; = "PhoneStateMonitorHelper"


# instance fields
.field private final context:Landroid/content/Context;

.field private mGestureState:Lcom/oplus/quickstep/gesture/OplusGestureState;

.field private final telephonyCallback:Landroid/telephony/TelephonyCallback;

.field private final telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$INSTANCE;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$INSTANCE;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$INSTANCE;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->context:Landroid/content/Context;

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->telephonyManager:Landroid/telephony/TelephonyManager;

    new-instance p1, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$telephonyCallback$1;

    invoke-direct {p1, p0}, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$telephonyCallback$1;-><init>(Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;)V

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->telephonyCallback:Landroid/telephony/TelephonyCallback;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getMGestureState()Lcom/oplus/quickstep/gesture/OplusGestureState;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->mGestureState:Lcom/oplus/quickstep/gesture/OplusGestureState;

    return-object p0
.end method

.method public final registerTelephonyCallback()V
    .registers 4

    const-string v0, "PhoneStateMonitorHelper"

    :try_start_2
    iget-object v1, p0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_7

    goto :goto_12

    :cond_7
    iget-object v2, p0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->telephonyCallback:Landroid/telephony/TelephonyCallback;

    invoke-virtual {v1, v2, p0}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    :goto_12
    const-string p0, "QuickStep"

    const-string v1, "registerTelephonyCallback()"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_19} :catch_1a

    goto :goto_20

    :catch_1a
    move-exception p0

    const-string v1, "registerTelephonyCallback error, "

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_20
    return-void
.end method

.method public final setMGestureState(Lcom/oplus/quickstep/gesture/OplusGestureState;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->mGestureState:Lcom/oplus/quickstep/gesture/OplusGestureState;

    return-void
.end method

.method public final unregisterTelephonyCallback()V
    .registers 3

    const-string v0, "PhoneStateMonitorHelper"

    :try_start_2
    iget-object v1, p0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_7

    goto :goto_c

    :cond_7
    iget-object p0, p0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->telephonyCallback:Landroid/telephony/TelephonyCallback;

    invoke-virtual {v1, p0}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    :goto_c
    const-string p0, "QuickStep"

    const-string v1, "unregisterTelephonyCallback()"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_14

    goto :goto_1a

    :catch_14
    move-exception p0

    const-string v1, "unregisterTelephonyCallback error, "

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1a
    return-void
.end method
