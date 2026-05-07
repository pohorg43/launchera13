.class public Lcom/oplus/fancyicon/data/binder/FileBinder;
.super Lcom/oplus/fancyicon/data/binder/VariableBinder;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/fancyicon/data/binder/FileBinder$Variable;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FileBinder"

.field public static final TAG_NAME:Ljava/lang/String; = "FileBinder"


# instance fields
.field private mCountVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

.field public mDirFormatter:Lcom/oplus/fancyicon/util/TextFormatter;

.field private mFiles:[Ljava/lang/String;

.field private mFilters:[Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field private mVariables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/fancyicon/data/binder/FileBinder$Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/oplus/fancyicon/data/binder/VariableBinder;-><init>(Lcom/oplus/fancyicon/ScreenElementRoot;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/oplus/fancyicon/data/binder/FileBinder;->mVariables:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/data/binder/FileBinder;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 6

    if-nez p1, :cond_a

    const-string p0, "FileBinder"

    const-string p1, "FileBinder node is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    const-string v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/data/binder/FileBinder;->mName:Ljava/lang/String;

    const-string v0, "filter"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v0, 0x0

    goto :goto_2a

    :cond_24
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_2a
    iput-object v0, p0, Lcom/oplus/fancyicon/data/binder/FileBinder;->mFilters:[Ljava/lang/String;

    new-instance v0, Lcom/oplus/fancyicon/util/TextFormatter;

    const-string v1, "dir"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dirExp"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-static {v2, v3}, Lcom/oplus/fancyicon/data/expression/Expression;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oplus/fancyicon/util/TextFormatter;-><init>(Ljava/lang/String;Lcom/oplus/fancyicon/data/expression/Expression;)V

    iput-object v0, p0, Lcom/oplus/fancyicon/data/binder/FileBinder;->mDirFormatter:Lcom/oplus/fancyicon/util/TextFormatter;

    iget-object v0, p0, Lcom/oplus/fancyicon/data/binder/FileBinder;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5e

    new-instance v0, Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    iget-object v1, p0, Lcom/oplus/fancyicon/data/binder/FileBinder;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v2}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v2

    const-string v3, "count"

    invoke-direct {v0, v1, v3, v2}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object v0, p0, Lcom/oplus/fancyicon/data/binder/FileBinder;->mCountVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    :cond_5e
    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/data/binder/FileBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private loadVariables(Lorg/w3c/dom/Element;)V
    .registers 3

    new-instance v0, Lcom/oplus/fancyicon/data/binder/FileBinder$1;

    invoke-direct {v0, p0}, Lcom/oplus/fancyicon/data/binder/FileBinder$1;-><init>(Lcom/oplus/fancyicon/data/binder/FileBinder;)V

    const-string p0, "Variable"

    invoke-static {p1, p0, v0}, Lcom/oplus/fancyicon/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/oplus/fancyicon/util/Utils$XmlTraverseListener;)V

    return-void
.end method

.method private updateVariables()V
    .registers 6

    iget-object v0, p0, Lcom/oplus/fancyicon/data/binder/FileBinder;->mFiles:[Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_7

    :cond_6
    array-length v0, v0

    :goto_7
    iget-object v1, p0, Lcom/oplus/fancyicon/data/binder/FileBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/fancyicon/data/binder/FileBinder$Variable;

    iget-object v3, v2, Lcom/oplus/fancyicon/data/binder/FileBinder$Variable;->mIndex:Lcom/oplus/fancyicon/data/expression/Expression;

    if-eqz v3, :cond_d

    iget-object v4, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v4}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oplus/fancyicon/data/expression/Expression;->evaluate(Lcom/oplus/fancyicon/data/Variables;)D

    move-result-wide v3

    double-to-int v3, v3

    iget-object v2, v2, Lcom/oplus/fancyicon/data/binder/FileBinder$Variable;->mVar:Lcom/oplus/fancyicon/data/IndexedStringVariable;

    if-nez v0, :cond_2e

    const/4 v3, 0x0

    goto :goto_33

    :cond_2e
    iget-object v4, p0, Lcom/oplus/fancyicon/data/binder/FileBinder;->mFiles:[Ljava/lang/String;

    rem-int/2addr v3, v0

    aget-object v3, v4, v3

    :goto_33
    invoke-virtual {v2, v3}, Lcom/oplus/fancyicon/data/IndexedStringVariable;->set(Ljava/lang/String;)V

    goto :goto_d

    :cond_37
    return-void
.end method


# virtual methods
.method public addVariable(Lcom/oplus/fancyicon/data/binder/FileBinder$Variable;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/FileBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic getName()Ljava/lang/CharSequence;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/fancyicon/data/binder/FileBinder;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/FileBinder;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public init()V
    .registers 1

    invoke-super {p0}, Lcom/oplus/fancyicon/data/binder/VariableBinder;->init()V

    invoke-virtual {p0}, Lcom/oplus/fancyicon/data/binder/FileBinder;->refresh()V

    return-void
.end method

.method public refresh()V
    .registers 5

    invoke-super {p0}, Lcom/oplus/fancyicon/data/binder/VariableBinder;->refresh()V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/oplus/fancyicon/data/binder/FileBinder;->mDirFormatter:Lcom/oplus/fancyicon/util/TextFormatter;

    iget-object v2, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v2}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/fancyicon/util/TextFormatter;->getText(Lcom/oplus/fancyicon/data/Variables;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/fancyicon/data/binder/FileBinder;->mFilters:[Ljava/lang/String;

    if-nez v1, :cond_1d

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    :cond_1d
    new-instance v2, Lcom/oplus/fancyicon/util/FilenameExtFilter;

    invoke-direct {v2, v1}, Lcom/oplus/fancyicon/util/FilenameExtFilter;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    :goto_26
    iput-object v0, p0, Lcom/oplus/fancyicon/data/binder/FileBinder;->mFiles:[Ljava/lang/String;

    if-nez v0, :cond_2c

    const/4 v0, 0x0

    goto :goto_2d

    :cond_2c
    array-length v0, v0

    :goto_2d
    iget-object v1, p0, Lcom/oplus/fancyicon/data/binder/FileBinder;->mCountVar:Lcom/oplus/fancyicon/data/IndexedNumberVariable;

    if-eqz v1, :cond_35

    int-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/oplus/fancyicon/data/IndexedNumberVariable;->set(D)V

    :cond_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileBinder"

    invoke-static {v1, v0}, Lcom/oplus/fancyicon/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/fancyicon/data/binder/FileBinder;->updateVariables()V

    return-void
.end method

.method public tick()V
    .registers 1

    invoke-super {p0}, Lcom/oplus/fancyicon/data/binder/VariableBinder;->tick()V

    invoke-direct {p0}, Lcom/oplus/fancyicon/data/binder/FileBinder;->updateVariables()V

    return-void
.end method
