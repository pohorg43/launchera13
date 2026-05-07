.class public final Lcom/android/launcher/guide/GuidePagerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/guide/GuidePagerAdapter$ViewHolder;,
        Lcom/android/launcher/guide/GuidePagerAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/launcher/guide/GuidePagerAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/guide/GuidePagerAdapter$Companion;

.field public static final TAG:Ljava/lang/String; = "GuidePagerAdapter"


# instance fields
.field private data:Landroid/util/SparseIntArray;

.field private final mCurrentGuidePage:Lcom/android/launcher/guide/GuidePageManager$Page;

.field private final mGuidImageView:[Lcom/oplus/anim/EffectiveAnimationView;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/guide/GuidePagerAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/guide/GuidePagerAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/guide/GuidePagerAdapter;->Companion:Lcom/android/launcher/guide/GuidePagerAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/guide/GuidePageManager$Page;)V
    .registers 7

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/guide/GuidePagerAdapter;->mCurrentGuidePage:Lcom/android/launcher/guide/GuidePageManager$Page;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oplus/anim/EffectiveAnimationView;

    iput-object v0, p0, Lcom/android/launcher/guide/GuidePagerAdapter;->mGuidImageView:[Lcom/oplus/anim/EffectiveAnimationView;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v1

    const v2, 0x7f1201e7

    const v3, 0x7f120342

    const v4, 0x7f1203e4

    if-eqz v1, :cond_3c

    sget-object v1, Lcom/android/launcher/guide/GuidePageManager$Page;->MULTI_FINGER:Lcom/android/launcher/guide/GuidePageManager$Page;

    if-ne p1, v1, :cond_35

    const p1, 0x7f110016

    invoke-virtual {v0, p1, v3}, Landroid/util/SparseIntArray;->append(II)V

    const p1, 0x7f110012

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->append(II)V

    goto :goto_73

    :cond_35
    const p1, 0x7f110019

    invoke-virtual {v0, p1, v4}, Landroid/util/SparseIntArray;->append(II)V

    goto :goto_73

    :cond_3c
    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_5c

    sget-object v1, Lcom/android/launcher/guide/GuidePageManager$Page;->MULTI_FINGER:Lcom/android/launcher/guide/GuidePageManager$Page;

    if-ne p1, v1, :cond_55

    const p1, 0x7f110017

    invoke-virtual {v0, p1, v3}, Landroid/util/SparseIntArray;->append(II)V

    const p1, 0x7f110013

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->append(II)V

    goto :goto_73

    :cond_55
    const p1, 0x7f11001a

    invoke-virtual {v0, p1, v4}, Landroid/util/SparseIntArray;->append(II)V

    goto :goto_73

    :cond_5c
    sget-object v1, Lcom/android/launcher/guide/GuidePageManager$Page;->MULTI_FINGER:Lcom/android/launcher/guide/GuidePageManager$Page;

    if-ne p1, v1, :cond_6d

    const p1, 0x7f110015

    invoke-virtual {v0, p1, v3}, Landroid/util/SparseIntArray;->append(II)V

    const p1, 0x7f110011

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->append(II)V

    goto :goto_73

    :cond_6d
    const p1, 0x7f110018

    invoke-virtual {v0, p1, v4}, Landroid/util/SparseIntArray;->append(II)V

    :goto_73
    iput-object v0, p0, Lcom/android/launcher/guide/GuidePagerAdapter;->data:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method public final getGuidImageView()[Lcom/oplus/anim/EffectiveAnimationView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/GuidePagerAdapter;->mGuidImageView:[Lcom/oplus/anim/EffectiveAnimationView;

    return-object p0
.end method

.method public getItemCount()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/GuidePagerAdapter;->data:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Lcom/android/launcher/guide/GuidePagerAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/guide/GuidePagerAdapter;->onBindViewHolder(Lcom/android/launcher/guide/GuidePagerAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/launcher/guide/GuidePagerAdapter$ViewHolder;I)V
    .registers 8

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/guide/GuidePagerAdapter;->mCurrentGuidePage:Lcom/android/launcher/guide/GuidePageManager$Page;

    sget-object v1, Lcom/android/launcher/guide/GuidePageManager$Page;->MULTI_FINGER:Lcom/android/launcher/guide/GuidePageManager$Page;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/launcher/guide/GuidePagerAdapter;->data:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    sub-int/2addr v0, p2

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_22

    :cond_1e
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_22
    invoke-virtual {p1}, Lcom/android/launcher/guide/GuidePagerAdapter$ViewHolder;->getGuideTipsTextView()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher/guide/GuidePagerAdapter;->data:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p1}, Lcom/android/launcher/guide/GuidePagerAdapter$ViewHolder;->getGuideImageView()Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher/guide/GuidePagerAdapter;->data:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(I)V

    const v0, 0x3ea8f5c3  # 0.33f

    invoke-virtual {v1, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setScale(F)V

    invoke-virtual {v1, v2}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatMode(I)V

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatCount(I)V

    iget-object p0, p0, Lcom/android/launcher/guide/GuidePagerAdapter;->mGuidImageView:[Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {p1}, Lcom/android/launcher/guide/GuidePagerAdapter$ViewHolder;->getGuideImageView()Lcom/oplus/anim/EffectiveAnimationView;

    move-result-object p1

    aput-object p1, p0, p2

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/guide/GuidePagerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher/guide/GuidePagerAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher/guide/GuidePagerAdapter$ViewHolder;
    .registers 5

    const-string/jumbo p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00fe

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "from(parent.context).inf…ager_item, parent, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/android/launcher/guide/GuidePagerAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/launcher/guide/GuidePagerAdapter$ViewHolder;-><init>(Lcom/android/launcher/guide/GuidePagerAdapter;Landroid/view/View;)V

    return-object p2
.end method
