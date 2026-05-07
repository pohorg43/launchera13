.class public final Lcom/android/launcher/guide/side/GuideLearningViewAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/guide/side/GuideLearningViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation


# instance fields
.field private mImg:Landroid/widget/ImageView;

.field private mTxt:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final getMImg()Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/side/GuideLearningViewAdapter$ViewHolder;->mImg:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final getMTxt()Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/guide/side/GuideLearningViewAdapter$ViewHolder;->mTxt:Landroid/widget/TextView;

    return-object p0
.end method

.method public final setMImg(Landroid/widget/ImageView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/side/GuideLearningViewAdapter$ViewHolder;->mImg:Landroid/widget/ImageView;

    return-void
.end method

.method public final setMTxt(Landroid/widget/TextView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/side/GuideLearningViewAdapter$ViewHolder;->mTxt:Landroid/widget/TextView;

    return-void
.end method
