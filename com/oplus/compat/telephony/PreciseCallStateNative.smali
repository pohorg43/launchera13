.class public Lcom/oplus/compat/telephony/PreciseCallStateNative;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final PRECISE_CALL_STATE_NOT_VALID:I = -0x1


# instance fields
.field private mBackgroundCallState:I

.field private mForegroundCallState:I

.field private mRingingCallState:I


# direct methods
.method public constructor <init>(III)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/compat/telephony/PreciseCallStateNative;->mRingingCallState:I

    iput v0, p0, Lcom/oplus/compat/telephony/PreciseCallStateNative;->mForegroundCallState:I

    iput v0, p0, Lcom/oplus/compat/telephony/PreciseCallStateNative;->mBackgroundCallState:I

    iput p1, p0, Lcom/oplus/compat/telephony/PreciseCallStateNative;->mRingingCallState:I

    iput p2, p0, Lcom/oplus/compat/telephony/PreciseCallStateNative;->mForegroundCallState:I

    iput p3, p0, Lcom/oplus/compat/telephony/PreciseCallStateNative;->mBackgroundCallState:I

    return-void
.end method


# virtual methods
.method public getBackgroundCallState()I
    .registers 1

    iget p0, p0, Lcom/oplus/compat/telephony/PreciseCallStateNative;->mBackgroundCallState:I

    return p0
.end method

.method public getForegroundCallState()I
    .registers 1

    iget p0, p0, Lcom/oplus/compat/telephony/PreciseCallStateNative;->mForegroundCallState:I

    return p0
.end method

.method public getRingingCallState()I
    .registers 1

    iget p0, p0, Lcom/oplus/compat/telephony/PreciseCallStateNative;->mRingingCallState:I

    return p0
.end method
