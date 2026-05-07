.class public final Lcom/android/launcher/guide/GuidePanelActivity$ImagePagerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/guide/GuidePanelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImagePagerAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/guide/GuidePanelActivity$ImagePagerAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/launcher/guide/GuidePanelActivity$ImagePagerAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mImageIds:[I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mTitleIds:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/launcher/guide/GuidePanelActivity$ImagePagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 p1, 0x3

    if-ne p2, p1, :cond_2f

    const/4 p1, 0x1

    new-array p2, p1, [I

    const v0, 0x7f1205da

    const/4 v1, 0x0

    aput v0, p2, v1

    iput-object p2, p0, Lcom/android/launcher/guide/GuidePanelActivity$ImagePagerAdapter;->mTitleIds:[I

    new-array p1, p1, [I

    const p2, 0x7f080578

    aput p2, p1, v1

    iput-object p1, p0, Lcom/android/launcher/guide/GuidePanelActivity$ImagePagerAdapter;->mImageIds:[I

    :cond_2f
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/GuidePanelActivity$ImagePagerAdapter;->mImageIds:[I

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length p0, p0

    :goto_a
    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Lcom/android/launcher/guide/GuidePanelActivity$ImagePagerAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/guide/GuidePanelActivity$ImagePagerAdapter;->onBindViewHolder(Lcom/android/launcher/guide/GuidePanelActivity$ImagePagerAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/launcher/guide/GuidePanelActivity$ImagePagerAdapter$ViewHolder;I)V
    .registers 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher/guide/GuidePanelActivity$ImagePagerAdapter$ViewHolder;->getMTileView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/guide/GuidePanelActivity$ImagePagerAdapter;->mTitleIds:[I

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p1}, Lcom/android/launcher/guide/GuidePanelActivity$ImagePagerAdapter$ViewHolder;->getMImageView()Landroid/widget/ImageView;

    move-result-object p1

    if-nez p1, :cond_1a

    goto :goto_24

    :cond_1a
    iget-object p0, p0, Lcom/android/launcher/guide/GuidePanelActivity$ImagePagerAdapter;->mImageIds:[I

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    aget p0, p0, p2

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_24
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/guide/GuidePanelActivity$ImagePagerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher/guide/GuidePanelActivity$ImagePagerAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher/guide/GuidePanelActivity$ImagePagerAdapter$ViewHolder;
    .registers 5

    const-string/jumbo p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/launcher/guide/GuidePanelActivity$ImagePagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-nez p2, :cond_c

    const/4 p1, 0x0

    goto :goto_14

    :cond_c
    const v0, 0x7f0d0102

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :goto_14
    new-instance p2, Lcom/android/launcher/guide/GuidePanelActivity$ImagePagerAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/launcher/guide/GuidePanelActivity$ImagePagerAdapter$ViewHolder;-><init>(Lcom/android/launcher/guide/GuidePanelActivity$ImagePagerAdapter;Landroid/view/View;)V

    return-object p2
.end method
