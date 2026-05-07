.class public Lcom/oplus/quickstep/locksetting/ui/NoticePreference;
.super Lcom/coui/appcompat/preference/COUIPreference;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "NoticePreference"


# instance fields
.field private isDrawableAnimation:Z

.field private mImageview:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/quickstep/locksetting/ui/NoticePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/quickstep/locksetting/ui/NoticePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oplus/quickstep/locksetting/ui/NoticePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/preference/COUIPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private replenishAnimation()V
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/quickstep/locksetting/ui/NoticePreference;->playAnimation()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/locksetting/ui/NoticePreference;->isDrawableAnimation:Z

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/coui/appcompat/preference/COUIPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a02d2

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/NoticePreference;->mImageview:Landroid/widget/ImageView;

    const-string p1, "onBindViewHolder: mImageview = "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/NoticePreference;->mImageview:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NoticePreference"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/locksetting/ui/NoticePreference;->replenishAnimation()V

    return-void
.end method

.method public playAnimation()V
    .registers 3

    const-string v0, "playAnimation: isDrawableAnimation = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/quickstep/locksetting/ui/NoticePreference;->isDrawableAnimation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mImageview = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/locksetting/ui/NoticePreference;->mImageview:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NoticePreference"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/quickstep/locksetting/ui/NoticePreference;->isDrawableAnimation:Z

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/NoticePreference;->mImageview:Landroid/widget/ImageView;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v1, :cond_39

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/quickstep/locksetting/ui/NoticePreference;->isDrawableAnimation:Z

    :cond_39
    return-void
.end method

.method public setDrawableAnimation(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/locksetting/ui/NoticePreference;->isDrawableAnimation:Z

    return-void
.end method
