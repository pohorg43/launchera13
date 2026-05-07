.class Lcom/coui/appcompat/slideview/COUISlideView$7;
.super Lcom/coui/appcompat/slideview/COUISlideDeleteAnimation;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/slideview/COUISlideView;->e(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/coui/appcompat/slideview/COUISlideView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/slideview/COUISlideView;Landroid/view/View;Landroid/view/View;IIII)V
    .registers 14

    iput-object p1, p0, Lcom/coui/appcompat/slideview/COUISlideView$7;->e:Lcom/coui/appcompat/slideview/COUISlideView;

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/slideview/COUISlideDeleteAnimation;-><init>(Landroid/view/View;IIII)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/slideview/COUISlideView$7;->e:Lcom/coui/appcompat/slideview/COUISlideView;

    iget-object v0, p0, Lcom/coui/appcompat/slideview/COUISlideView;->j0:Lcom/coui/appcompat/slideview/COUISlideView$OnDeleteItemClickListener;

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/coui/appcompat/slideview/COUISlideView;->K:Z

    invoke-interface {v0}, Lcom/coui/appcompat/slideview/COUISlideView$OnDeleteItemClickListener;->a()V

    :cond_c
    return-void
.end method
