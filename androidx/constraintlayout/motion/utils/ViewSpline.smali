.class public abstract Landroidx/constraintlayout/motion/utils/ViewSpline;
.super Landroidx/constraintlayout/core/motion/utils/SplineSet;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/utils/ViewSpline$ProgressSet;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationZset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationYset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationXset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$ScaleYset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$ScaleXset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$PivotYset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$PivotXset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$RotationYset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$RotationXset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$RotationSet;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$ElevationSet;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewSpline"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/SplineSet;-><init>()V

    return-void
.end method

.method public static makeCustomSpline(Ljava/lang/String;Landroid/util/SparseArray;)Landroidx/constraintlayout/motion/utils/ViewSpline;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;)",
            "Landroidx/constraintlayout/motion/utils/ViewSpline;"
        }
    .end annotation

    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;

    invoke-direct {v0, p0, p1}, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object v0
.end method

.method public static makeSpline(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/ViewSpline;
    .registers 3

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_148

    goto/16 :goto_e2

    :sswitch_d
    const-string/jumbo v0, "waveOffset"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto/16 :goto_e2

    :cond_18
    const/16 v1, 0xf

    goto/16 :goto_e2

    :sswitch_1c
    const-string v0, "alpha"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto/16 :goto_e2

    :cond_26
    const/16 v1, 0xe

    goto/16 :goto_e2

    :sswitch_2a
    const-string/jumbo v0, "transitionPathRotate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_35

    goto/16 :goto_e2

    :cond_35
    const/16 v1, 0xd

    goto/16 :goto_e2

    :sswitch_39
    const-string v0, "elevation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_43

    goto/16 :goto_e2

    :cond_43
    const/16 v1, 0xc

    goto/16 :goto_e2

    :sswitch_47
    const-string/jumbo v0, "rotation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_52

    goto/16 :goto_e2

    :cond_52
    const/16 v1, 0xb

    goto/16 :goto_e2

    :sswitch_56
    const-string/jumbo v0, "transformPivotY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_61

    goto/16 :goto_e2

    :cond_61
    const/16 v1, 0xa

    goto/16 :goto_e2

    :sswitch_65
    const-string/jumbo v0, "transformPivotX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_70

    goto/16 :goto_e2

    :cond_70
    const/16 v1, 0x9

    goto/16 :goto_e2

    :sswitch_74
    const-string/jumbo v0, "waveVariesBy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7f

    goto/16 :goto_e2

    :cond_7f
    const/16 v1, 0x8

    goto/16 :goto_e2

    :sswitch_83
    const-string/jumbo v0, "scaleY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8d

    goto :goto_e2

    :cond_8d
    const/4 v1, 0x7

    goto :goto_e2

    :sswitch_8f
    const-string/jumbo v0, "scaleX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_99

    goto :goto_e2

    :cond_99
    const/4 v1, 0x6

    goto :goto_e2

    :sswitch_9b
    const-string/jumbo v0, "progress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a5

    goto :goto_e2

    :cond_a5
    const/4 v1, 0x5

    goto :goto_e2

    :sswitch_a7
    const-string/jumbo v0, "translationZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b1

    goto :goto_e2

    :cond_b1
    const/4 v1, 0x4

    goto :goto_e2

    :sswitch_b3
    const-string/jumbo v0, "translationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_bd

    goto :goto_e2

    :cond_bd
    const/4 v1, 0x3

    goto :goto_e2

    :sswitch_bf
    const-string/jumbo v0, "translationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c9

    goto :goto_e2

    :cond_c9
    const/4 v1, 0x2

    goto :goto_e2

    :sswitch_cb
    const-string/jumbo v0, "rotationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d5

    goto :goto_e2

    :cond_d5
    const/4 v1, 0x1

    goto :goto_e2

    :sswitch_d7
    const-string/jumbo v0, "rotationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e1

    goto :goto_e2

    :cond_e1
    const/4 v1, 0x0

    :goto_e2
    packed-switch v1, :pswitch_data_18a

    const/4 p0, 0x0

    return-object p0

    :pswitch_e7  #0xf
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>()V

    return-object p0

    :pswitch_ed  #0xe
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>()V

    return-object p0

    :pswitch_f3  #0xd
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;-><init>()V

    return-object p0

    :pswitch_f9  #0xc
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewSpline$ElevationSet;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewSpline$ElevationSet;-><init>()V

    return-object p0

    :pswitch_ff  #0xb
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationSet;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationSet;-><init>()V

    return-object p0

    :pswitch_105  #0xa
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewSpline$PivotYset;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewSpline$PivotYset;-><init>()V

    return-object p0

    :pswitch_10b  #0x9
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewSpline$PivotXset;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewSpline$PivotXset;-><init>()V

    return-object p0

    :pswitch_111  #0x8
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>()V

    return-object p0

    :pswitch_117  #0x7
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewSpline$ScaleYset;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewSpline$ScaleYset;-><init>()V

    return-object p0

    :pswitch_11d  #0x6
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewSpline$ScaleXset;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewSpline$ScaleXset;-><init>()V

    return-object p0

    :pswitch_123  #0x5
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewSpline$ProgressSet;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewSpline$ProgressSet;-><init>()V

    return-object p0

    :pswitch_129  #0x4
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationZset;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationZset;-><init>()V

    return-object p0

    :pswitch_12f  #0x3
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationYset;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationYset;-><init>()V

    return-object p0

    :pswitch_135  #0x2
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationXset;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationXset;-><init>()V

    return-object p0

    :pswitch_13b  #0x1
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationYset;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationYset;-><init>()V

    return-object p0

    :pswitch_141  #0x0
    new-instance p0, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationXset;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationXset;-><init>()V

    return-object p0

    nop

    :sswitch_data_148
    .sparse-switch
        -0x4a771f66 -> :sswitch_d7
        -0x4a771f65 -> :sswitch_cb
        -0x490b9c39 -> :sswitch_bf
        -0x490b9c38 -> :sswitch_b3
        -0x490b9c37 -> :sswitch_a7
        -0x3bab3dd3 -> :sswitch_9b
        -0x3621dfb2 -> :sswitch_8f
        -0x3621dfb1 -> :sswitch_83
        -0x2f893320 -> :sswitch_74
        -0x2d5a2d1e -> :sswitch_65
        -0x2d5a2d1d -> :sswitch_56
        -0x266f082 -> :sswitch_47
        -0x42d1a3 -> :sswitch_39
        0x2382115 -> :sswitch_2a
        0x589b15e -> :sswitch_1c
        0x94e04ec -> :sswitch_d
    .end sparse-switch

    :pswitch_data_18a
    .packed-switch 0x0
        :pswitch_141  #00000000
        :pswitch_13b  #00000001
        :pswitch_135  #00000002
        :pswitch_12f  #00000003
        :pswitch_129  #00000004
        :pswitch_123  #00000005
        :pswitch_11d  #00000006
        :pswitch_117  #00000007
        :pswitch_111  #00000008
        :pswitch_10b  #00000009
        :pswitch_105  #0000000a
        :pswitch_ff  #0000000b
        :pswitch_f9  #0000000c
        :pswitch_f3  #0000000d
        :pswitch_ed  #0000000e
        :pswitch_e7  #0000000f
    .end packed-switch
.end method


# virtual methods
.method public abstract setProperty(Landroid/view/View;F)V
.end method
