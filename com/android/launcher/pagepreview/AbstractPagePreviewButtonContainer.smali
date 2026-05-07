.class public abstract Lcom/android/launcher/pagepreview/AbstractPagePreviewButtonContainer;
.super Lcom/android/launcher/views/AdaptiveScreenRotateLinearLayout;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "AbstractPagePreviewButtonContainer"


# instance fields
.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/pagepreview/AbstractPagePreviewButtonContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/views/AdaptiveScreenRotateLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0x11

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/launcher/pagepreview/AbstractPagePreviewButtonContainer;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public abstract onButtonLayoutInflateFinished()V
.end method

.method public reInflateView()V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    iget-object v0, p0, Lcom/android/launcher/pagepreview/AbstractPagePreviewButtonContainer;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0196

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher/pagepreview/AbstractPagePreviewButtonContainer;->onButtonLayoutInflateFinished()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method
