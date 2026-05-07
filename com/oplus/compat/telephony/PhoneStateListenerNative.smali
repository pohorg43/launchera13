.class public Lcom/oplus/compat/telephony/PhoneStateListenerNative;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final mToken:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/compat/telephony/PhoneStateListenerNative;->mToken:J

    return-void
.end method


# virtual methods
.method public getToken()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/compat/telephony/PhoneStateListenerNative;->mToken:J

    return-wide v0
.end method

.method public onCallStateChanged(Landroid/telephony/PhoneStateListener;ILjava/lang/String;)V
    .registers 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    return-void
.end method

.method public onPreciseCallStateChanged(Lcom/oplus/compat/telephony/PreciseCallStateNative;)V
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    return-void
.end method

.method public onSrvccStateChanged(Landroid/telephony/PhoneStateListener;I)V
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    return-void
.end method
