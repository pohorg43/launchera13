.class public final Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IconImageVH"
.end annotation


# instance fields
.field private mAnimView:Lcom/sdk/deleteview/DeleteView;

.field private final mCheckbox:Lcom/coui/appcompat/checkbox/COUICheckBox;

.field private mNormalView:Lcom/coui/appcompat/imageview/COUIRoundImageView;

.field private final mTvAlertInfo:Landroid/widget/TextView;

.field private final mTvName:Landroid/widget/TextView;

.field private final mTvUninstallInfo:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a009c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sdk/deleteview/DeleteView;

    iput-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->mAnimView:Lcom/sdk/deleteview/DeleteView;

    const v0, 0x7f0a01c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/imageview/COUIRoundImageView;

    iput-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->mNormalView:Lcom/coui/appcompat/imageview/COUIRoundImageView;

    const v0, 0x7f0a057c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->mTvName:Landroid/widget/TextView;

    const v0, 0x7f0a0573

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->mTvAlertInfo:Landroid/widget/TextView;

    const v0, 0x7f0a0597

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->mTvUninstallInfo:Landroid/widget/TextView;

    const v0, 0x7f0a0136

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/checkbox/COUICheckBox;

    iput-object p1, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->mCheckbox:Lcom/coui/appcompat/checkbox/COUICheckBox;

    return-void
.end method


# virtual methods
.method public final getMAnimView()Lcom/sdk/deleteview/DeleteView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->mAnimView:Lcom/sdk/deleteview/DeleteView;

    return-object p0
.end method

.method public final getMCheckbox()Lcom/coui/appcompat/checkbox/COUICheckBox;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->mCheckbox:Lcom/coui/appcompat/checkbox/COUICheckBox;

    return-object p0
.end method

.method public final getMNormalView()Lcom/coui/appcompat/imageview/COUIRoundImageView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->mNormalView:Lcom/coui/appcompat/imageview/COUIRoundImageView;

    return-object p0
.end method

.method public final getMTvAlertInfo()Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->mTvAlertInfo:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getMTvName()Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->mTvName:Landroid/widget/TextView;

    return-object p0
.end method

.method public final getMTvUninstallInfo()Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->mTvUninstallInfo:Landroid/widget/TextView;

    return-object p0
.end method

.method public final setMAnimView(Lcom/sdk/deleteview/DeleteView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->mAnimView:Lcom/sdk/deleteview/DeleteView;

    return-void
.end method

.method public final setMNormalView(Lcom/coui/appcompat/imageview/COUIRoundImageView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/UninstallRemoveAppPanel$IconImageAdapter$IconImageVH;->mNormalView:Lcom/coui/appcompat/imageview/COUIRoundImageView;

    return-void
.end method
