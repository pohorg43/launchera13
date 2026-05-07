.class public final Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter$EffectVH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EffectVH"
.end annotation


# instance fields
.field private mIconIv:Landroid/widget/ImageView;

.field private mTitleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a029f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.findViewById(R.id.icon)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter$EffectVH;->mIconIv:Landroid/widget/ImageView;

    const v0, 0x7f0a0546

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo v0, "view.findViewById(R.id.title)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter$EffectVH;->mTitleTv:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final getMIconIv()Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter$EffectVH;->mIconIv:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getMTitleTv()Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter$EffectVH;->mTitleTv:Landroid/widget/TextView;

    return-object p0
.end method

.method public final setMIconIv(Landroid/widget/ImageView;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter$EffectVH;->mIconIv:Landroid/widget/ImageView;

    return-void
.end method

.method public final setMTitleTv(Landroid/widget/TextView;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/togglebar/adapter/ToggleBarEffectAdapter$EffectVH;->mTitleTv:Landroid/widget/TextView;

    return-void
.end method
