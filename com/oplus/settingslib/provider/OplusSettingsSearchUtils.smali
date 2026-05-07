.class public Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ARGS_COLOR_CATEGORY:Ljava/lang/String; = ":settings:fragment_args_color_category"

.field public static final ARGS_COLOR_PREFERENCE:Ljava/lang/String; = ":settings:fragment_args_color_preferece"

.field public static final ARGS_HIGHT_LIGHT_TIME:Ljava/lang/String; = ":settings:fragment_args_light_time"

.field public static final ARGS_KEY:Ljava/lang/String; = ":settings:fragment_args_key"

.field public static final ARGS_WAIT_TIME:Ljava/lang/String; = ":settings:fragment_args_wait_time"

.field private static final DELAY_TIME:I = 0x96

.field public static final HIGHT_LIGHT_COLOR_PREFERENCE_DEFAULT:I = -0x1b1b1c

.field public static final HIGH_LIGHT_TIME_DEFAULT:I = 0x3e8

.field private static final LAST_TIME:I = 0x1f4

.field public static final RAW_RENAME_EXTRA_KEY:Ljava/lang/String; = "_settings_extra_key"

.field private static final START_TIME:I = 0x64

.field private static final STOP_TIME:I = 0xfa

.field public static final WAIT_TIME_DEFAULT:I = 0x12c


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Landroid/widget/ListView;IIZ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils;->showHightlight(Landroid/widget/ListView;IIZ)V

    return-void
.end method

.method public static synthetic access$100(Landroid/widget/ListView;Ljava/lang/String;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils;->canUseListViewForHighLighting(Landroid/widget/ListView;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$200(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/AnimationDrawable;
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils;->getAnimationDrawable(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object p0

    return-object p0
.end method

.method private static calculateHightlight(Landroid/preference/PreferenceScreen;Landroid/widget/ListView;Ljava/lang/String;II)V
    .registers 5

    invoke-virtual {p0, p2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    instance-of p0, p0, Landroid/preference/PreferenceCategory;

    invoke-static {p1, p2, p3, p0, p4}, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils;->calculateHightlight(Landroid/widget/ListView;Ljava/lang/String;IZI)V

    return-void
.end method

.method private static calculateHightlight(Landroid/widget/ListView;Ljava/lang/String;IZI)V
    .registers 12

    if-eqz p0, :cond_10

    new-instance v6, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils$2;-><init>(Landroid/widget/ListView;Ljava/lang/String;IIZ)V

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    :cond_10
    return-void
.end method

.method private static canUseListViewForHighLighting(Landroid/widget/ListView;Ljava/lang/String;)I
    .registers 7

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    const/4 v0, -0x1

    if-eqz p0, :cond_28

    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_28

    invoke-interface {p0, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroid/preference/Preference;

    if-eqz v4, :cond_25

    check-cast v3, Landroid/preference/Preference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_25

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    return v2

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_28
    return v0
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

    const/4 v10, 0x1

    const/16 v11, 0x10

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

    aput-object v6, v5, v10

    invoke-direct {v7, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v7, v11}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_3a

    :cond_37
    invoke-virtual {v2, v6, v11}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

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

    aput-object v6, v13, v10

    invoke-direct {v7, v13}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v7, v11}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_7e

    :cond_6d
    invoke-virtual {v2, v6, v11}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const/16 v6, 0x1e

    if-ne v12, v6, :cond_7e

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/16 v7, 0x12c

    invoke-virtual {v2, v6, v7}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    :cond_7e
    :goto_7e
    add-int/lit8 v12, v12, 0x1

    const-wide/16 v6, 0x0

    goto :goto_4a

    :cond_83
    if-eqz v1, :cond_8a

    const/16 v0, 0x96

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    :cond_8a
    return-object v2
.end method

.method public static highlightListView(Landroid/widget/ListView;IZLandroid/content/Intent;)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils;->highlightListView(Landroid/widget/ListView;IZLandroid/content/Intent;I)V

    return-void
.end method

.method public static highlightListView(Landroid/widget/ListView;IZLandroid/content/Intent;I)V
    .registers 6

    if-eqz p0, :cond_1a

    if-nez p3, :cond_5

    goto :goto_1a

    :cond_5
    const-string v0, ":settings:fragment_args_key"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_12

    return-void

    :cond_12
    new-instance p3, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils$1;

    invoke-direct {p3, p1, p4, p0, p2}, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils$1;-><init>(IILandroid/widget/ListView;Z)V

    invoke-virtual {p0, p3}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    :cond_1a
    :goto_1a
    return-void
.end method

.method public static highlightPreference(Landroid/preference/PreferenceScreen;Landroid/widget/ListView;Landroid/os/Bundle;)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils;->highlightPreference(Landroid/preference/PreferenceScreen;Landroid/widget/ListView;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static highlightPreference(Landroid/preference/PreferenceScreen;Landroid/widget/ListView;Landroid/os/Bundle;I)V
    .registers 5

    if-eqz p0, :cond_1a

    if-eqz p1, :cond_1a

    if-nez p2, :cond_7

    goto :goto_1a

    :cond_7
    const-string v0, ":settings:fragment_args_key"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    :cond_14
    const v0, -0x1b1b1c

    invoke-static {p0, p1, p2, v0, p3}, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils;->calculateHightlight(Landroid/preference/PreferenceScreen;Landroid/widget/ListView;Ljava/lang/String;II)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method public static highlightPreference(Landroid/widget/ListView;Landroid/os/Bundle;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils;->highlightPreference(Landroid/widget/ListView;Landroid/os/Bundle;I)V

    return-void
.end method

.method public static highlightPreference(Landroid/widget/ListView;Landroid/os/Bundle;I)V
    .registers 5

    if-eqz p0, :cond_19

    if-nez p1, :cond_5

    goto :goto_19

    :cond_5
    const-string v0, ":settings:fragment_args_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    :cond_12
    const v0, -0x1b1b1c

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils;->calculateHightlight(Landroid/widget/ListView;Ljava/lang/String;IZI)V

    :cond_19
    :goto_19
    return-void
.end method

.method private static showHightlight(Landroid/widget/ListView;IIZ)V
    .registers 4

    if-eqz p3, :cond_3

    return-void

    :cond_3
    new-instance p3, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils$3;

    invoke-direct {p3, p1, p0, p2}, Lcom/oplus/settingslib/provider/OplusSettingsSearchUtils$3;-><init>(ILandroid/widget/ListView;I)V

    const-wide/16 p1, 0x12c

    invoke-virtual {p0, p3, p1, p2}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
