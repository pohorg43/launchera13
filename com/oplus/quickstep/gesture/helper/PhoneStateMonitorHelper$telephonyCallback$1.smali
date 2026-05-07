.class public final Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$telephonyCallback$1;
.super Landroid/telephony/TelephonyCallback;
.source ""

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$telephonyCallback$1;->this$0:Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(I)V
    .registers 5

    const-string v0, "onCallStateChanged: state = "

    const-string v1, "QuickStep"

    const-string v2, "PhoneStateMonitorHelper"

    invoke-static {p1, v0, v1, v2}, Lcom/android/launcher/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1f

    const/4 v0, 0x1

    if-eq p1, v0, :cond_12

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1f

    goto :goto_2c

    :cond_12
    iget-object p0, p0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$telephonyCallback$1;->this$0:Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->getMGestureState()Lcom/oplus/quickstep/gesture/OplusGestureState;

    move-result-object p0

    if-nez p0, :cond_1b

    goto :goto_2c

    :cond_1b
    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setMSystemWindowClosed(Z)V

    goto :goto_2c

    :cond_1f
    iget-object p0, p0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$telephonyCallback$1;->this$0:Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->getMGestureState()Lcom/oplus/quickstep/gesture/OplusGestureState;

    move-result-object p0

    if-nez p0, :cond_28

    goto :goto_2c

    :cond_28
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setMSystemWindowClosed(Z)V

    :goto_2c
    return-void
.end method
