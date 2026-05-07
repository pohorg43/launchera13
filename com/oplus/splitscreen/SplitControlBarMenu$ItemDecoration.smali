.class public Lcom/oplus/splitscreen/SplitControlBarMenu$ItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/splitscreen/SplitControlBarMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemDecoration"
.end annotation


# instance fields
.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private final mItemSpacing:I

.field public final synthetic this$0:Lcom/oplus/splitscreen/SplitControlBarMenu;


# direct methods
.method public constructor <init>(Lcom/oplus/splitscreen/SplitControlBarMenu;)V
    .registers 4

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitControlBarMenu$ItemDecoration;->this$0:Lcom/oplus/splitscreen/SplitControlBarMenu;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    invoke-static {p1}, Lcom/oplus/splitscreen/SplitControlBarMenu;->access$800(Lcom/oplus/splitscreen/SplitControlBarMenu;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x41000000  # 8.0f

    invoke-static {v1, v0}, Lcom/oplus/splitscreen/DividerUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v0

    iput v0, p0, Lcom/oplus/splitscreen/SplitControlBarMenu$ItemDecoration;->mItemSpacing:I

    invoke-static {p1}, Lcom/oplus/splitscreen/SplitControlBarMenu;->access$800(Lcom/oplus/splitscreen/SplitControlBarMenu;)Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/wm/shell/R$drawable;->split_screen_menu_divider_1:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitControlBarMenu$ItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 10

    iget-object p4, p0, Lcom/oplus/splitscreen/SplitControlBarMenu$ItemDecoration;->this$0:Lcom/oplus/splitscreen/SplitControlBarMenu;

    invoke-static {p4}, Lcom/oplus/splitscreen/SplitControlBarMenu;->access$600(Lcom/oplus/splitscreen/SplitControlBarMenu;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    iget v0, p0, Lcom/oplus/splitscreen/SplitControlBarMenu$ItemDecoration;->mItemSpacing:I

    div-int/lit8 v1, v0, 0x2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    const/4 v1, 0x2

    div-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    invoke-static {}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->isLayoutDirectionRtl()Z

    move-result v0

    if-lt p4, v1, :cond_9d

    const/high16 v2, 0x40400000  # 3.0f

    const/high16 v3, 0x40000000  # 2.0f

    if-eqz v0, :cond_5f

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v4, p4, -0x1

    if-ne v0, v4, :cond_40

    iget v0, p0, Lcom/oplus/splitscreen/SplitControlBarMenu$ItemDecoration;->mItemSpacing:I

    iget-object v4, p0, Lcom/oplus/splitscreen/SplitControlBarMenu$ItemDecoration;->this$0:Lcom/oplus/splitscreen/SplitControlBarMenu;

    invoke-static {v4}, Lcom/oplus/splitscreen/SplitControlBarMenu;->access$800(Lcom/oplus/splitscreen/SplitControlBarMenu;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oplus/splitscreen/DividerUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v3

    add-int/2addr v3, v0

    iput v3, p1, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/oplus/splitscreen/SplitControlBarMenu$ItemDecoration;->mItemSpacing:I

    div-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    :cond_40
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p4, v1

    if-ne p2, p4, :cond_9d

    iget p2, p0, Lcom/oplus/splitscreen/SplitControlBarMenu$ItemDecoration;->mItemSpacing:I

    div-int/lit8 p3, p2, 0x2

    iput p3, p1, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitControlBarMenu$ItemDecoration;->this$0:Lcom/oplus/splitscreen/SplitControlBarMenu;

    invoke-static {p0}, Lcom/oplus/splitscreen/SplitControlBarMenu;->access$800(Lcom/oplus/splitscreen/SplitControlBarMenu;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/splitscreen/DividerUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result p0

    add-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_9d

    :cond_5f
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v4, p4, -0x1

    if-ne v0, v4, :cond_7f

    iget v0, p0, Lcom/oplus/splitscreen/SplitControlBarMenu$ItemDecoration;->mItemSpacing:I

    iget-object v4, p0, Lcom/oplus/splitscreen/SplitControlBarMenu$ItemDecoration;->this$0:Lcom/oplus/splitscreen/SplitControlBarMenu;

    invoke-static {v4}, Lcom/oplus/splitscreen/SplitControlBarMenu;->access$800(Lcom/oplus/splitscreen/SplitControlBarMenu;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oplus/splitscreen/DividerUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v3

    add-int/2addr v3, v0

    iput v3, p1, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/oplus/splitscreen/SplitControlBarMenu$ItemDecoration;->mItemSpacing:I

    div-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    :cond_7f
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p4, v1

    if-ne p2, p4, :cond_9d

    iget p2, p0, Lcom/oplus/splitscreen/SplitControlBarMenu$ItemDecoration;->mItemSpacing:I

    div-int/lit8 p3, p2, 0x2

    iput p3, p1, Landroid/graphics/Rect;->left:I

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitControlBarMenu$ItemDecoration;->this$0:Lcom/oplus/splitscreen/SplitControlBarMenu;

    invoke-static {p0}, Lcom/oplus/splitscreen/SplitControlBarMenu;->access$800(Lcom/oplus/splitscreen/SplitControlBarMenu;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/oplus/splitscreen/DividerUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result p0

    add-int/2addr p0, p2

    iput p0, p1, Landroid/graphics/Rect;->right:I

    :cond_9d
    :goto_9d
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 7

    iget-object p3, p0, Lcom/oplus/splitscreen/SplitControlBarMenu$ItemDecoration;->this$0:Lcom/oplus/splitscreen/SplitControlBarMenu;

    invoke-static {p3}, Lcom/oplus/splitscreen/SplitControlBarMenu;->access$600(Lcom/oplus/splitscreen/SplitControlBarMenu;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x2

    if-lt p3, v0, :cond_78

    invoke-static {}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->isLayoutDirectionRtl()Z

    move-result v1

    if-eqz v1, :cond_1a

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    goto :goto_1f

    :cond_1a
    sub-int/2addr p3, v0

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    :goto_1f
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p3

    iget v0, p0, Lcom/oplus/splitscreen/SplitControlBarMenu$ItemDecoration;->mItemSpacing:I

    add-int/2addr p3, v0

    const/high16 v0, 0x40000000  # 2.0f

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitControlBarMenu$ItemDecoration;->this$0:Lcom/oplus/splitscreen/SplitControlBarMenu;

    invoke-static {v1}, Lcom/oplus/splitscreen/SplitControlBarMenu;->access$800(Lcom/oplus/splitscreen/SplitControlBarMenu;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/splitscreen/DividerUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    const/high16 p3, 0x40c00000  # 6.0f

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitControlBarMenu$ItemDecoration;->this$0:Lcom/oplus/splitscreen/SplitControlBarMenu;

    invoke-static {v1}, Lcom/oplus/splitscreen/SplitControlBarMenu;->access$800(Lcom/oplus/splitscreen/SplitControlBarMenu;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/oplus/splitscreen/DividerUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result p3

    add-int/2addr p3, p2

    const/high16 p2, 0x3f800000  # 1.0f

    iget-object v1, p0, Lcom/oplus/splitscreen/SplitControlBarMenu$ItemDecoration;->this$0:Lcom/oplus/splitscreen/SplitControlBarMenu;

    invoke-static {v1}, Lcom/oplus/splitscreen/SplitControlBarMenu;->access$800(Lcom/oplus/splitscreen/SplitControlBarMenu;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/oplus/splitscreen/DividerUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result p2

    add-int/2addr p2, v0

    const/high16 v1, 0x41c00000  # 24.0f

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitControlBarMenu$ItemDecoration;->this$0:Lcom/oplus/splitscreen/SplitControlBarMenu;

    invoke-static {v2}, Lcom/oplus/splitscreen/SplitControlBarMenu;->access$800(Lcom/oplus/splitscreen/SplitControlBarMenu;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/splitscreen/DividerUtils;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v1

    add-int/2addr v1, p3

    iget-object v2, p0, Lcom/oplus/splitscreen/SplitControlBarMenu$ItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, p3, p2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitControlBarMenu$ItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_78
    return-void
.end method
