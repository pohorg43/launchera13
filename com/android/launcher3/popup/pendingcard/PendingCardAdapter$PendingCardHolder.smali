.class public final Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PendingCardHolder"
.end annotation


# instance fields
.field private mDesiredHeight:F

.field private mDesiredWith:F

.field private mOffsetHorizontal:F

.field private mPendingCardView:Lcom/android/launcher3/popup/pendingcard/PendingCardView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    check-cast p1, Lcom/android/launcher3/popup/pendingcard/PendingCardView;

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;->mPendingCardView:Lcom/android/launcher3/popup/pendingcard/PendingCardView;

    return-void
.end method


# virtual methods
.method public final getMDesiredHeight()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;->mDesiredHeight:F

    return p0
.end method

.method public final getMDesiredWith()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;->mDesiredWith:F

    return p0
.end method

.method public final getMOffsetHorizontal()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;->mOffsetHorizontal:F

    return p0
.end method

.method public final getMPendingCardView()Lcom/android/launcher3/popup/pendingcard/PendingCardView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;->mPendingCardView:Lcom/android/launcher3/popup/pendingcard/PendingCardView;

    return-object p0
.end method

.method public final onBind(Lcom/oplus/card/config/domain/model/CardConfigInfo;Ljava/util/Map;Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;FI)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/card/config/domain/model/CardConfigInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Landroid/graphics/Point;",
            ">;",
            "Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;",
            "FI)V"
        }
    .end annotation

    const-string v0, "cardInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "minCardSizeList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mInnerAlignedState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;->mDesiredWith:F

    invoke-virtual {p1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;->mDesiredHeight:F

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;->mPendingCardView:Lcom/android/launcher3/popup/pendingcard/PendingCardView;

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;->getMPendingCardView()Lcom/android/launcher3/popup/pendingcard/PendingCardView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    sget-object v2, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->Companion:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;

    invoke-virtual {p1}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result v3

    invoke-virtual {v2, v3, p3, p4}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;->getHorizontalOffset(ILcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerHorizontalAlignState;F)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;->setMOffsetHorizontal(F)V

    if-eqz v1, :cond_69

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRight()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;->getMOffsetHorizontal()F

    move-result p4

    sub-float/2addr p3, p4

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p4

    int-to-float p4, p4

    sub-float/2addr p3, p4

    goto :goto_6d

    :cond_69
    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;->getMOffsetHorizontal()F

    move-result p3

    :goto_6d
    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->setX(F)V

    invoke-virtual {v0, p1, p2, p5}, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->applyCardInfo(Lcom/oplus/card/config/domain/model/CardConfigInfo;Ljava/util/Map;I)V

    const/4 p1, 0x3

    if-ne p5, p1, :cond_e3

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;->getMPendingCardView()Lcom/android/launcher3/popup/pendingcard/PendingCardView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;->getMPendingCardView()Lcom/android/launcher3/popup/pendingcard/PendingCardView;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {p0, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.graphics.drawable.VectorDrawable"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/graphics/drawable/VectorDrawable;

    sget-object p2, Lcom/android/launcher/wallpaper/WallpaperResolver;->Companion:Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;

    invoke-virtual {p2}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;->isWorkspaceWpBright()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_c7

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x7f06066a

    invoke-virtual {p2, p4, p3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/VectorDrawable;->setTint(I)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06066c

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_e3

    :cond_c7
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x7f06066b

    invoke-virtual {p2, p4, p3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/VectorDrawable;->setTint(I)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06066d

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_e3
    :goto_e3
    return-void
.end method

.method public final setMDesiredHeight(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;->mDesiredHeight:F

    return-void
.end method

.method public final setMDesiredWith(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;->mDesiredWith:F

    return-void
.end method

.method public final setMOffsetHorizontal(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;->mOffsetHorizontal:F

    return-void
.end method

.method public final setMPendingCardView(Lcom/android/launcher3/popup/pendingcard/PendingCardView;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter$PendingCardHolder;->mPendingCardView:Lcom/android/launcher3/popup/pendingcard/PendingCardView;

    return-void
.end method
