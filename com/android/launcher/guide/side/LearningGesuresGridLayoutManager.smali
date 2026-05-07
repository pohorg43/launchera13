.class public final Lcom/android/launcher/guide/side/LearningGesuresGridLayoutManager;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source ""


# instance fields
.field private mIsScrollEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/guide/side/LearningGesuresGridLayoutManager;->mIsScrollEnabled:Z

    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher/guide/side/LearningGesuresGridLayoutManager;->mIsScrollEnabled:Z

    if-eqz v0, :cond_c

    invoke-super {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollVertically()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final setScrollEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/guide/side/LearningGesuresGridLayoutManager;->mIsScrollEnabled:Z

    return-void
.end method
