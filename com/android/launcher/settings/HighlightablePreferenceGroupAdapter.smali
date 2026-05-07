.class public Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;
.super Landroidx/preference/PreferenceGroupAdapter;
.source ""


# static fields
.field public static final DELAY_HIGHLIGHT_DURATION_MILLIS:J = 0x12cL

.field private static final DELAY_TIME:I = 0xc8

.field public static final EXTRA_FRAGMENT_ARG_KEY:Ljava/lang/String; = ":settings:fragment_args_key"

.field private static final HIGHLIGHT_DURATION:J = 0x3e8L

.field private static final HIGHT_LIGHT_COLOR_PREFERENCE_DARKMODE:I = -0xcccccd

.field private static final HIGHT_LIGHT_COLOR_PREFERENCE_DEFAULT:I = -0x1b1b1c

.field private static final LAST_TIME:I = 0x1f4

.field private static final START_TIME:I = 0x64

.field private static final STOP_TIME:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "HighlightableAdapter"


# instance fields
.field public mFadeInAnimated:Z

.field public final mHighlightColor:I

.field private final mHighlightKey:Ljava/lang/String;

.field private mHighlightPosition:I

.field private mHighlightRequested:Z

.field private final mNormalBackgroundRes:I


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Z)V
    .registers 6

    invoke-direct {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;-><init>(Landroidx/preference/PreferenceGroup;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;->mHighlightPosition:I

    iput-object p2, p0, Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;->mHighlightKey:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;->mHighlightRequested:Z

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    const v0, 0x101030e

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p2, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    iput p2, p0, Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;->mNormalBackgroundRes:I

    invoke-static {p1}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2c

    const p1, -0xcccccd

    goto :goto_2f

    :cond_2c
    const p1, -0x1b1b1c

    :goto_2f
    iput p1, p0, Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;->mHighlightColor:I

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;->lambda$requestHighlight$0(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public static synthetic access$002(Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;I)I
    .registers 2

    iput p1, p0, Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;->mHighlightPosition:I

    return p1
.end method

.method public static synthetic access$100(Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;Landroid/view/View;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;->removeHighlightBackground(Landroid/view/View;Z)V

    return-void
.end method

.method private addHighlightBackground(Landroid/view/View;Z)V
    .registers 4

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v0, 0x7f0a03ec

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-boolean p2, p0, Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;->mFadeInAnimated:Z

    if-eqz p2, :cond_d

    return-void

    :cond_d
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;->mFadeInAnimated:Z

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget v0, p0, Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;->mHighlightColor:I

    invoke-static {v0, p2}, Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;->getAnimationDrawable(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    const-string p2, "HighlightableAdapter"

    const-string v0, "AddHighlight: starting fade in animation"

    invoke-static {p2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;->requestRemoveHighlightDelayed(Landroid/view/View;)V

    return-void
.end method

.method public static adjustInitialExpandedChildCount(Landroidx/preference/PreferenceFragmentCompat;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_22

    const-string v1, ":settings:fragment_args_key"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_22

    const p0, 0x7fffffff

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->setInitialExpandedChildrenCount(I)V

    :cond_22
    return-void
.end method

.method private static getAnimationDrawable(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/AnimationDrawable;
    .registers 17

    move v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    const-wide v8, 0x406fe00000000000L  # 255.0

    const/16 v10, 0x10

    const/4 v11, 0x1

    const/4 v12, 0x6

    if-ge v4, v12, :cond_3d

    int-to-double v13, v4

    add-double/2addr v13, v6

    mul-double/2addr v13, v8

    int-to-double v6, v12

    div-double/2addr v13, v6

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    double-to-int v7, v13

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    if-eqz v1, :cond_37

    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v5, v3

    aput-object v6, v5, v11

    invoke-direct {v7, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v7, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_3a

    :cond_37
    invoke-virtual {v2, v6, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    :goto_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_3d
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/16 v12, 0xfa

    invoke-virtual {v2, v4, v12}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const/16 v4, 0x1f

    move v12, v3

    :goto_4a
    if-ge v12, v4, :cond_83

    rsub-int/lit8 v13, v12, 0x1f

    int-to-double v13, v13

    sub-double/2addr v13, v6

    mul-double/2addr v13, v8

    int-to-double v6, v4

    div-double/2addr v13, v6

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    double-to-int v7, v13

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    if-eqz v1, :cond_6d

    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    new-array v13, v5, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v13, v3

    aput-object v6, v13, v11

    invoke-direct {v7, v13}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v7, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_7e

    :cond_6d
    invoke-virtual {v2, v6, v10}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const/16 v6, 0x1e

    if-ne v12, v6, :cond_7e

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/16 v7, 0x190

    invoke-virtual {v2, v6, v7}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    :cond_7e
    :goto_7e
    add-int/lit8 v12, v12, 0x1

    const-wide/16 v6, 0x0

    goto :goto_4a

    :cond_83
    if-eqz v1, :cond_8a

    const/16 v0, 0xc8

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    :cond_8a
    invoke-virtual {v2, v11}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    return-object v2
.end method

.method private synthetic lambda$requestHighlight$0(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;->mHighlightKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroupAdapter;->getPreferenceAdapterPosition(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    instance-of v1, v1, Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_1b

    if-lez v0, :cond_1b

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void

    :cond_1b
    if-le v0, v2, :cond_20

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_20
    iget-boolean p1, p0, Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;->mFadeInAnimated:Z

    if-eqz p1, :cond_25

    return-void

    :cond_25
    iput-boolean v2, p0, Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;->mHighlightRequested:Z

    iput v0, p0, Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;->mHighlightPosition:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private removeHighlightBackground(Landroid/view/View;Z)V
    .registers 3

    instance-of p2, p1, Landroid/widget/LinearLayout;

    if-nez p2, :cond_9

    iget p0, p0, Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;->mNormalBackgroundRes:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_9
    const-string p0, "HighlightableAdapter"

    const-string p1, "Starting fade out animation"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isHighlightRequested()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;->mHighlightRequested:Z

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceGroupAdapter;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;->updateBackground(Landroidx/preference/PreferenceViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V

    return-void
.end method

.method public requestHighlight(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;->mHighlightRequested:Z

    if-nez v0, :cond_19

    if-eqz p2, :cond_19

    iget-object v0, p0, Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;->mHighlightKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_19

    :cond_f
    new-instance v0, Lcom/android/launcher/guide/c;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher/guide/c;-><init>(Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;Landroidx/recyclerview/widget/RecyclerView;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_19
    :goto_19
    return-void
.end method

.method public requestRemoveHighlightDelayed(Landroid/view/View;)V
    .registers 5

    new-instance v0, Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter$1;-><init>(Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;Landroid/view/View;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updateBackground(Landroidx/preference/PreferenceViewHolder;I)V
    .registers 4

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v0, p0, Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;->mHighlightPosition:I

    if-ne p2, v0, :cond_e

    iget-boolean p2, p0, Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;->mFadeInAnimated:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;->addHighlightBackground(Landroid/view/View;Z)V

    goto :goto_21

    :cond_e
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v0, 0x7f0a03ec

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_21

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;->removeHighlightBackground(Landroid/view/View;Z)V

    :cond_21
    :goto_21
    return-void
.end method
