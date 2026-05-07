.class public Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;
.super Landroid/view/animation/PathInterpolator;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 4

    const v0, 0x3e99999a  # 0.3f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-direct {p0, v0, v1, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-void
.end method
