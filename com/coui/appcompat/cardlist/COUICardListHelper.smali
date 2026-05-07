.class public Lcom/coui/appcompat/cardlist/COUICardListHelper;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroidx/preference/Preference;)I
    .registers 7

    invoke-virtual {p0}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_65

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    :goto_d
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    if-ge v3, v4, :cond_23

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/preference/Preference;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_23
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v1

    :goto_28
    if-ge v4, v3, :cond_35

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne p0, v5, :cond_32

    move v1, v4

    goto :goto_35

    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_35
    :goto_35
    const/4 p0, 0x0

    if-lez v1, :cond_41

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/preference/Preference;

    goto :goto_42

    :cond_41
    move-object v4, p0

    :goto_42
    const/4 v5, 0x1

    sub-int/2addr v3, v5

    if-ge v1, v3, :cond_4d

    add-int/2addr v1, v5

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/preference/Preference;

    :cond_4d
    if-eqz v4, :cond_57

    invoke-static {v0, v4}, Lcom/coui/appcompat/cardlist/COUICardListHelper;->b(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;)Z

    move-result v1

    if-eqz v1, :cond_57

    const/4 v1, 0x2

    goto :goto_58

    :cond_57
    move v1, v5

    :goto_58
    if-eqz p0, :cond_60

    invoke-static {v0, p0}, Lcom/coui/appcompat/cardlist/COUICardListHelper;->b(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;)Z

    move-result p0

    if-nez p0, :cond_65

    :cond_60
    if-ne v1, v5, :cond_64

    const/4 v1, 0x4

    goto :goto_65

    :cond_64
    const/4 v1, 0x3

    :cond_65
    :goto_65
    return v1
.end method

.method public static b(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;)Z
    .registers 4

    instance-of p0, p0, Landroidx/preference/PreferenceScreen;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_15

    instance-of p0, p1, Lcom/coui/appcompat/preference/COUICardSupportInterface;

    if-eqz p0, :cond_14

    check-cast p1, Lcom/coui/appcompat/preference/COUICardSupportInterface;

    invoke-interface {p1}, Lcom/coui/appcompat/preference/COUICardSupportInterface;->isSupportCardUse()Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_14

    :cond_13
    return v1

    :cond_14
    :goto_14
    return v0

    :cond_15
    instance-of p0, p1, Landroidx/preference/PreferenceCategory;

    if-eqz p0, :cond_1a

    return v0

    :cond_1a
    return v1
.end method

.method public static c(Landroid/view/View;I)V
    .registers 3

    if-eqz p0, :cond_b

    instance-of v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    if-eqz v0, :cond_b

    check-cast p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->setPositionInGroup(I)V

    :cond_b
    return-void
.end method
