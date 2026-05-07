.class public Lcom/oplus/anim/value/EffectiveFrameInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private endFrame:F

.field private endValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private interpolatedKeyframeProgress:F

.field private linearKeyframeProgress:F

.field private overallProgress:F

.field private startFrame:F

.field private startValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndFrame()F
    .registers 1

    iget p0, p0, Lcom/oplus/anim/value/EffectiveFrameInfo;->endFrame:F

    return p0
.end method

.method public getEndValue()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/value/EffectiveFrameInfo;->endValue:Ljava/lang/Object;

    return-object p0
.end method

.method public getInterpolatedKeyframeProgress()F
    .registers 1

    iget p0, p0, Lcom/oplus/anim/value/EffectiveFrameInfo;->interpolatedKeyframeProgress:F

    return p0
.end method

.method public getLinearKeyframeProgress()F
    .registers 1

    iget p0, p0, Lcom/oplus/anim/value/EffectiveFrameInfo;->linearKeyframeProgress:F

    return p0
.end method

.method public getOverallProgress()F
    .registers 1

    iget p0, p0, Lcom/oplus/anim/value/EffectiveFrameInfo;->overallProgress:F

    return p0
.end method

.method public getStartFrame()F
    .registers 1

    iget p0, p0, Lcom/oplus/anim/value/EffectiveFrameInfo;->startFrame:F

    return p0
.end method

.method public getStartValue()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/anim/value/EffectiveFrameInfo;->startValue:Ljava/lang/Object;

    return-object p0
.end method

.method public set(FFLjava/lang/Object;Ljava/lang/Object;FFF)Lcom/oplus/anim/value/EffectiveFrameInfo;
    .registers 8
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFTT;TT;FFF)",
            "Lcom/oplus/anim/value/EffectiveFrameInfo<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/oplus/anim/value/EffectiveFrameInfo;->startFrame:F

    iput p2, p0, Lcom/oplus/anim/value/EffectiveFrameInfo;->endFrame:F

    iput-object p3, p0, Lcom/oplus/anim/value/EffectiveFrameInfo;->startValue:Ljava/lang/Object;

    iput-object p4, p0, Lcom/oplus/anim/value/EffectiveFrameInfo;->endValue:Ljava/lang/Object;

    iput p5, p0, Lcom/oplus/anim/value/EffectiveFrameInfo;->linearKeyframeProgress:F

    iput p6, p0, Lcom/oplus/anim/value/EffectiveFrameInfo;->interpolatedKeyframeProgress:F

    iput p7, p0, Lcom/oplus/anim/value/EffectiveFrameInfo;->overallProgress:F

    return-object p0
.end method
