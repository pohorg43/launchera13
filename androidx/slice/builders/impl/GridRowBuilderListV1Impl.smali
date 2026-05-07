.class public Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source ""


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilderImpl;
    }
.end annotation


# instance fields
.field private mPrimaryAction:Landroidx/slice/builders/SliceAction;


# direct methods
.method public constructor <init>(Landroidx/slice/builders/impl/ListBuilderImpl;Landroidx/slice/builders/GridRowBuilder;)V
    .registers 4
    .param p1  # Landroidx/slice/builders/impl/ListBuilderImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->createChildBuilder()Landroidx/slice/Slice$Builder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    invoke-virtual {p2}, Landroidx/slice/builders/GridRowBuilder;->getLayoutDirection()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_16

    invoke-virtual {p2}, Landroidx/slice/builders/GridRowBuilder;->getLayoutDirection()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;->setLayoutDirection(I)V

    :cond_16
    invoke-virtual {p2}, Landroidx/slice/builders/GridRowBuilder;->getDescription()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_23

    invoke-virtual {p2}, Landroidx/slice/builders/GridRowBuilder;->getDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_23
    invoke-virtual {p2}, Landroidx/slice/builders/GridRowBuilder;->getSeeMoreIntent()Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_31

    invoke-virtual {p2}, Landroidx/slice/builders/GridRowBuilder;->getSeeMoreIntent()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;->setSeeMoreAction(Landroid/app/PendingIntent;)V

    goto :goto_3e

    :cond_31
    invoke-virtual {p2}, Landroidx/slice/builders/GridRowBuilder;->getSeeMoreCell()Landroidx/slice/builders/GridRowBuilder$CellBuilder;

    move-result-object p1

    if-eqz p1, :cond_3e

    invoke-virtual {p2}, Landroidx/slice/builders/GridRowBuilder;->getSeeMoreCell()Landroidx/slice/builders/GridRowBuilder$CellBuilder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;->setSeeMoreCell(Landroidx/slice/builders/GridRowBuilder$CellBuilder;)V

    :cond_3e
    :goto_3e
    invoke-virtual {p2}, Landroidx/slice/builders/GridRowBuilder;->getPrimaryAction()Landroidx/slice/builders/SliceAction;

    move-result-object p1

    if-eqz p1, :cond_4b

    invoke-virtual {p2}, Landroidx/slice/builders/GridRowBuilder;->getPrimaryAction()Landroidx/slice/builders/SliceAction;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)V

    :cond_4b
    invoke-virtual {p2}, Landroidx/slice/builders/GridRowBuilder;->getCells()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_53
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_63

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/slice/builders/GridRowBuilder$CellBuilder;

    invoke-virtual {p0, p2}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;->addCell(Landroidx/slice/builders/GridRowBuilder$CellBuilder;)V

    goto :goto_53

    :cond_63
    return-void
.end method


# virtual methods
.method public addCell(Landroidx/slice/builders/GridRowBuilder$CellBuilder;)V
    .registers 3

    new-instance v0, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilderImpl;

    invoke-direct {v0, p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilderImpl;-><init>(Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;)V

    invoke-virtual {v0, p1}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilderImpl;->fillFrom(Landroidx/slice/builders/GridRowBuilder$CellBuilder;)V

    invoke-virtual {p0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilderImpl;->apply(Landroidx/slice/Slice$Builder;)V

    return-void
.end method

.method public apply(Landroidx/slice/Slice$Builder;)V
    .registers 3
    .param p1  # Landroidx/slice/Slice$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "horizontal"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    iget-object p0, p0, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    if-eqz p0, :cond_10

    invoke-virtual {p0, p1}, Landroidx/slice/builders/SliceAction;->setPrimaryAction(Landroidx/slice/Slice$Builder;)V

    :cond_10
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .registers 4

    invoke-virtual {p0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "content_description"

    invoke-virtual {p0, p1, v1, v0}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    return-void
.end method

.method public setLayoutDirection(I)V
    .registers 4

    invoke-virtual {p0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "layout_direction"

    invoke-virtual {p0, p1, v1, v0}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    return-void
.end method

.method public setPrimaryAction(Landroidx/slice/builders/SliceAction;)V
    .registers 2

    iput-object p1, p0, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    return-void
.end method

.method public setSeeMoreAction(Landroid/app/PendingIntent;)V
    .registers 5

    invoke-virtual {p0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    new-instance v1, Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    const-string/jumbo v2, "see_more"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v1

    new-instance v2, Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object p0

    invoke-direct {v2, p0}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    invoke-virtual {v2}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p0, v2}, Landroidx/slice/Slice$Builder;->addAction(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    return-void
.end method

.method public setSeeMoreCell(Landroidx/slice/builders/GridRowBuilder$CellBuilder;)V
    .registers 4
    .param p1  # Landroidx/slice/builders/GridRowBuilder$CellBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilderImpl;

    invoke-direct {v0, p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilderImpl;-><init>(Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;)V

    invoke-virtual {v0, p1}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilderImpl;->fillFrom(Landroidx/slice/builders/GridRowBuilder$CellBuilder;)V

    invoke-virtual {v0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object p1

    const-string/jumbo v1, "see_more"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilderImpl;->apply(Landroidx/slice/Slice$Builder;)V

    return-void
.end method
