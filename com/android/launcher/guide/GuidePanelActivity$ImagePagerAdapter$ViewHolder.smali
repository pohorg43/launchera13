.class public final Lcom/android/launcher/guide/GuidePanelActivity$ImagePagerAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/guide/GuidePanelActivity$ImagePagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation


# instance fields
.field private mDescriptionView:Landroid/widget/TextView;

.field private mImageView:Landroid/widget/ImageView;

.field private mTileView:Landroid/widget/TextView;

.field public final synthetic this$0:Lcom/android/launcher/guide/GuidePanelActivity$ImagePagerAdapter;


# direct methods
.method public constructor <init>(Lcom/android/launcher/guide/GuidePanelActivity$ImagePagerAdapter;Landroid/view/View;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/guide/GuidePanelActivity$ImagePagerAdapter$ViewHolder;->this$0:Lcom/android/launcher/guide/GuidePanelActivity$ImagePagerAdapter;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a027f

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string/jumbo v0, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/launcher/guide/GuidePanelActivity$ImagePagerAdapter$ViewHolder;->mTileView:Landroid/widget/TextView;

    const p1, 0x7f0a027e

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/launcher/guide/GuidePanelActivity$ImagePagerAdapter$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    const p1, 0x7f0a027c

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const-string/jumbo p2, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/launcher/guide/GuidePanelActivity$ImagePagerAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/android/launcher/guide/GuidePanelActivity$ImagePagerAdapter$ViewHolder;->mTileView:Landroid/widget/TextView;

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->b(Landroid/widget/TextView;I)V

    iget-object p0, p0, Lcom/android/launcher/guide/GuidePanelActivity$ImagePagerAdapter$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    invoke-static {p0, p2}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->b(Landroid/widget/TextView;I)V

    return-void
.end method


# virtual methods
.method public final getMDescriptionView()Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/GuidePanelActivity$ImagePagerAdapter$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getMImageView()Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/GuidePanelActivity$ImagePagerAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getMTileView()Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/GuidePanelActivity$ImagePagerAdapter$ViewHolder;->mTileView:Landroid/widget/TextView;

    return-object p0
.end method

.method public final setMDescriptionView(Landroid/widget/TextView;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/guide/GuidePanelActivity$ImagePagerAdapter$ViewHolder;->mDescriptionView:Landroid/widget/TextView;

    return-void
.end method

.method public final setMImageView(Landroid/widget/ImageView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/GuidePanelActivity$ImagePagerAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    return-void
.end method

.method public final setMTileView(Landroid/widget/TextView;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/guide/GuidePanelActivity$ImagePagerAdapter$ViewHolder;->mTileView:Landroid/widget/TextView;

    return-void
.end method
