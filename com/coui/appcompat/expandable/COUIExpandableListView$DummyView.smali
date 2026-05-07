.class Lcom/coui/appcompat/expandable/COUIExpandableListView$DummyView;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/expandable/COUIExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DummyView"
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/graphics/drawable/Drawable;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$DummyView;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 10

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$DummyView;->b:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    iget v2, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$DummyView;->c:I

    iget v3, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$DummyView;->d:I

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_f
    iget-object v0, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$DummyView;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    move v3, v2

    :goto_17
    if-ge v2, v0, :cond_55

    iget-object v4, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$DummyView;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p1, v1, v1, v6, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-virtual {v4, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v4, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$DummyView;->b:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    if-eqz v4, :cond_47

    iget v7, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$DummyView;->d:I

    add-int/2addr v3, v7

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v4, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$DummyView;->d:I

    int-to-float v4, v4

    invoke-virtual {p1, v6, v4}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_47
    int-to-float v4, v5

    invoke-virtual {p1, v6, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    if-le v3, v4, :cond_52

    goto :goto_55

    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_55
    :goto_55
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 10

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    sub-int/2addr p5, p3

    iget-object p1, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$DummyView;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p4, 0x0

    move v0, p4

    :goto_c
    if-ge p4, p1, :cond_2d

    iget-object v1, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$DummyView;->a:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, p2

    add-int/2addr v2, p3

    invoke-virtual {v1, p2, p3, v3, v2}, Landroid/view/View;->layout(IIII)V

    iget v1, p0, Lcom/coui/appcompat/expandable/COUIExpandableListView$DummyView;->d:I

    add-int/2addr v0, v1

    if-le v0, p5, :cond_2a

    goto :goto_2d

    :cond_2a
    add-int/lit8 p4, p4, 0x1

    goto :goto_c

    :cond_2d
    :goto_2d
    return-void
.end method
