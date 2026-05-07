.class Lcom/coui/appcompat/cardview/COUICardView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/cardview/CardViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/cardview/COUICardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Landroid/graphics/drawable/Drawable;

.field public final synthetic b:Lcom/coui/appcompat/cardview/COUICardView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/cardview/COUICardView;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/cardview/COUICardView$1;->b:Lcom/coui/appcompat/cardview/COUICardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCardBackground()Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/cardview/COUICardView$1;->a:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getCardView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/cardview/COUICardView$1;->b:Lcom/coui/appcompat/cardview/COUICardView;

    return-object p0
.end method

.method public getPreventCornerOverlap()Z
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/cardview/COUICardView$1;->b:Lcom/coui/appcompat/cardview/COUICardView;

    invoke-virtual {p0}, Lcom/coui/appcompat/cardview/COUICardView;->getPreventCornerOverlap()Z

    move-result p0

    return p0
.end method

.method public getUseCompatPadding()Z
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/cardview/COUICardView$1;->b:Lcom/coui/appcompat/cardview/COUICardView;

    invoke-virtual {p0}, Lcom/coui/appcompat/cardview/COUICardView;->getUseCompatPadding()Z

    move-result p0

    return p0
.end method

.method public setCardBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/cardview/COUICardView$1;->a:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/coui/appcompat/cardview/COUICardView$1;->b:Lcom/coui/appcompat/cardview/COUICardView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setMinWidthHeightInternal(II)V
    .registers 5

    iget-object v0, p0, Lcom/coui/appcompat/cardview/COUICardView$1;->b:Lcom/coui/appcompat/cardview/COUICardView;

    iget v1, v0, Lcom/coui/appcompat/cardview/COUICardView;->mUserSetMinWidth:I

    if-le p1, v1, :cond_9

    invoke-static {v0, p1}, Lcom/coui/appcompat/cardview/COUICardView;->access$101(Lcom/coui/appcompat/cardview/COUICardView;I)V

    :cond_9
    iget-object p0, p0, Lcom/coui/appcompat/cardview/COUICardView$1;->b:Lcom/coui/appcompat/cardview/COUICardView;

    iget p1, p0, Lcom/coui/appcompat/cardview/COUICardView;->mUserSetMinHeight:I

    if-le p2, p1, :cond_12

    invoke-static {p0, p2}, Lcom/coui/appcompat/cardview/COUICardView;->access$201(Lcom/coui/appcompat/cardview/COUICardView;I)V

    :cond_12
    return-void
.end method

.method public setShadowPadding(IIII)V
    .registers 7

    iget-object v0, p0, Lcom/coui/appcompat/cardview/COUICardView$1;->b:Lcom/coui/appcompat/cardview/COUICardView;

    iget-object v0, v0, Lcom/coui/appcompat/cardview/COUICardView;->mShadowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p0, p0, Lcom/coui/appcompat/cardview/COUICardView$1;->b:Lcom/coui/appcompat/cardview/COUICardView;

    iget-object v0, p0, Lcom/coui/appcompat/cardview/COUICardView;->mContentPadding:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p3, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p4, v0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/cardview/COUICardView;->access$001(Lcom/coui/appcompat/cardview/COUICardView;IIII)V

    return-void
.end method
