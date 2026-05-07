.class public Lcom/android/launcher/guide/SlideUpGuideAdapter;
.super Lcom/android/launcher/guide/BaseSlideGuideAdapter;
.source ""


# static fields
.field private static final SLID_UP_SIZE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SlideUpGuideAdapter"


# instance fields
.field private final mGuideDrawables:[I

.field private final mGuideExplain:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher/guide/BaseSlideGuideAdapter;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1a

    iput-object v0, p0, Lcom/android/launcher/guide/SlideUpGuideAdapter;->mGuideDrawables:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030050

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/guide/SlideUpGuideAdapter;->mGuideExplain:[Ljava/lang/String;

    return-void

    nop

    :array_1a
    .array-data 4
        0x7f0807a9
        0x7f0807aa
        0x7f0807a8
    .end array-data
.end method


# virtual methods
.method public getCount()I
    .registers 1

    const/4 p0, 0x3

    return p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 7

    iget-object v0, p0, Lcom/android/launcher/guide/BaseSlideGuideAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0108

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a03b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0a03b4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0069

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-virtual {p0, v3, p2}, Lcom/android/launcher/guide/BaseSlideGuideAdapter;->updateBtton(Landroid/widget/Button;I)V

    iget-object v3, p0, Lcom/android/launcher/guide/SlideUpGuideAdapter;->mGuideDrawables:[I

    aget v3, v3, p2

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/android/launcher/guide/SlideUpGuideAdapter;->mGuideExplain:[Ljava/lang/String;

    if-eqz p0, :cond_3b

    array-length v1, p0

    if-ge p2, v1, :cond_3b

    aget-object p0, p0, p2

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3b
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method
