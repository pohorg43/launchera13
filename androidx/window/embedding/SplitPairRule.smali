.class public final Landroidx/window/embedding/SplitPairRule;
.super Landroidx/window/embedding/SplitRule;
.source ""


# annotations
.annotation build Landroidx/window/core/ExperimentalWindowApi;
.end annotation


# instance fields
.field private final clearTop:Z

.field private final filters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/window/embedding/SplitPairFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final finishPrimaryWithSecondary:I

.field private final finishSecondaryWithPrimary:I


# direct methods
.method public constructor <init>(Ljava/util/Set;IIZIIFI)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/window/embedding/SplitPairFilter;",
            ">;IIZIIFI)V"
        }
    .end annotation

    const-string v0, "filters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p5, p6, p7, p8}, Landroidx/window/embedding/SplitRule;-><init>(IIFI)V

    iput p2, p0, Landroidx/window/embedding/SplitPairRule;->finishPrimaryWithSecondary:I

    iput p3, p0, Landroidx/window/embedding/SplitPairRule;->finishSecondaryWithPrimary:I

    iput-boolean p4, p0, Landroidx/window/embedding/SplitPairRule;->clearTop:Z

    invoke-static {p1}, Lz2/r;->R(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroidx/window/embedding/SplitPairRule;->filters:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Set;IIZIIFIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 18

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move v1, v2

    goto :goto_a

    :cond_9
    move v1, p2

    :goto_a
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_10

    const/4 v3, 0x1

    goto :goto_11

    :cond_10
    move v3, p3

    :goto_11
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_17

    move v4, v2

    goto :goto_18

    :cond_17
    move v4, p4

    :goto_18
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_1e

    move v5, v2

    goto :goto_1f

    :cond_1e
    move v5, p5

    :goto_1f
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_24

    goto :goto_25

    :cond_24
    move v2, p6

    :goto_25
    and-int/lit8 v6, v0, 0x40

    if-eqz v6, :cond_2c

    const/high16 v6, 0x3f000000  # 0.5f

    goto :goto_2d

    :cond_2c
    move v6, p7

    :goto_2d
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_33

    const/4 v0, 0x3

    goto :goto_34

    :cond_33
    move v0, p8

    :goto_34
    move-object p2, p0

    move-object p3, p1

    move p4, v1

    move p5, v3

    move p6, v4

    move p7, v5

    move p8, v2

    move/from16 p9, v6

    move/from16 p10, v0

    invoke-direct/range {p2 .. p10}, Landroidx/window/embedding/SplitPairRule;-><init>(Ljava/util/Set;IIZIIFI)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroidx/window/embedding/SplitPairRule;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    invoke-super {p0, p1}, Landroidx/window/embedding/SplitRule;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Landroidx/window/embedding/SplitPairRule;->filters:Ljava/util/Set;

    check-cast p1, Landroidx/window/embedding/SplitPairRule;

    iget-object v3, p1, Landroidx/window/embedding/SplitPairRule;->filters:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget v1, p0, Landroidx/window/embedding/SplitPairRule;->finishPrimaryWithSecondary:I

    iget v3, p1, Landroidx/window/embedding/SplitPairRule;->finishPrimaryWithSecondary:I

    if-eq v1, v3, :cond_25

    return v2

    :cond_25
    iget v1, p0, Landroidx/window/embedding/SplitPairRule;->finishSecondaryWithPrimary:I

    iget v3, p1, Landroidx/window/embedding/SplitPairRule;->finishSecondaryWithPrimary:I

    if-eq v1, v3, :cond_2c

    return v2

    :cond_2c
    iget-boolean p0, p0, Landroidx/window/embedding/SplitPairRule;->clearTop:Z

    iget-boolean p1, p1, Landroidx/window/embedding/SplitPairRule;->clearTop:Z

    if-eq p0, p1, :cond_33

    return v2

    :cond_33
    return v0
.end method

.method public final getClearTop()Z
    .registers 1

    iget-boolean p0, p0, Landroidx/window/embedding/SplitPairRule;->clearTop:Z

    return p0
.end method

.method public final getFilters()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/window/embedding/SplitPairFilter;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/window/embedding/SplitPairRule;->filters:Ljava/util/Set;

    return-object p0
.end method

.method public final getFinishPrimaryWithSecondary()I
    .registers 1

    iget p0, p0, Landroidx/window/embedding/SplitPairRule;->finishPrimaryWithSecondary:I

    return p0
.end method

.method public final getFinishSecondaryWithPrimary()I
    .registers 1

    iget p0, p0, Landroidx/window/embedding/SplitPairRule;->finishSecondaryWithPrimary:I

    return p0
.end method

.method public hashCode()I
    .registers 4

    invoke-super {p0}, Landroidx/window/embedding/SplitRule;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/window/embedding/SplitPairRule;->filters:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroidx/window/embedding/SplitPairRule;->finishPrimaryWithSecondary:I

    const/16 v2, 0x1f

    invoke-static {v0, v1, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget v1, p0, Landroidx/window/embedding/SplitPairRule;->finishSecondaryWithPrimary:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-boolean p0, p0, Landroidx/window/embedding/SplitPairRule;->clearTop:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final plus$window_release(Landroidx/window/embedding/SplitPairFilter;)Landroidx/window/embedding/SplitPairRule;
    .registers 13

    const-string v0, "filter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v1, p0, Landroidx/window/embedding/SplitPairRule;->filters:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroidx/window/embedding/SplitPairRule;

    invoke-static {v0}, Lz2/r;->R(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    iget v4, p0, Landroidx/window/embedding/SplitPairRule;->finishPrimaryWithSecondary:I

    iget v5, p0, Landroidx/window/embedding/SplitPairRule;->finishSecondaryWithPrimary:I

    iget-boolean v6, p0, Landroidx/window/embedding/SplitPairRule;->clearTop:Z

    invoke-virtual {p0}, Landroidx/window/embedding/SplitRule;->getMinWidth()I

    move-result v7

    invoke-virtual {p0}, Landroidx/window/embedding/SplitRule;->getMinSmallestWidth()I

    move-result v8

    invoke-virtual {p0}, Landroidx/window/embedding/SplitRule;->getSplitRatio()F

    move-result v9

    invoke-virtual {p0}, Landroidx/window/embedding/SplitRule;->getLayoutDirection()I

    move-result v10

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Landroidx/window/embedding/SplitPairRule;-><init>(Ljava/util/Set;IIZIIFI)V

    return-object p1
.end method
