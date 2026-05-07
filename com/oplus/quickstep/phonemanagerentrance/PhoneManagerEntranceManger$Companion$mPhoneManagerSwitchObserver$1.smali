.class public final Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion$mPhoneManagerSwitchObserver$1;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    const-string p0, "mPhoneManagerSwitchObserver onChange b:"

    const-string v0, "PhoneManagerEntranceManger"

    invoke-static {p1, p0, v0}, Lcom/android/common/config/c;->a(ZLjava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    invoke-static {}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->access$getMContext$cp()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->updatePhoneManagerSwitch(Landroid/content/Context;)V

    return-void
.end method
