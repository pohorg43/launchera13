.class Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReboundConfig"
.end annotation


# instance fields
.field public a:D

.field public b:D


# direct methods
.method public constructor <init>(DD)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    double-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->a(F)F

    move-result p1

    float-to-double p1, p1

    iput-wide p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->a:D

    double-to-float p1, p3

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->b(F)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/coui/appcompat/scroll/SpringOverScroller$ReboundOverScroller$ReboundConfig;->b:D

    return-void
.end method


# virtual methods
.method public final a(F)F
    .registers 4

    const/4 p0, 0x0

    cmpl-float v0, p1, p0

    if-nez v0, :cond_6

    goto :goto_10

    :cond_6
    const/high16 p0, 0x41000000  # 8.0f

    const/high16 v0, 0x40400000  # 3.0f

    const/high16 v1, 0x41c80000  # 25.0f

    invoke-static {p1, p0, v0, v1}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result p0

    :goto_10
    return p0
.end method

.method public final b(F)D
    .registers 4

    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-nez p0, :cond_8

    const-wide/16 p0, 0x0

    goto :goto_14

    :cond_8
    const/high16 p0, 0x41f00000  # 30.0f

    const v0, 0x4067ae14  # 3.62f

    const/high16 v1, 0x43420000  # 194.0f

    invoke-static {p1, p0, v0, v1}, Landroidx/appcompat/graphics/drawable/a;->a(FFFF)F

    move-result p0

    float-to-double p0, p0

    :goto_14
    return-wide p0
.end method
