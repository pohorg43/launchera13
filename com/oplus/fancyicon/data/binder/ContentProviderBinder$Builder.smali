.class public Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mBinder:Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;

.field private final mVariables:Lcom/oplus/fancyicon/data/Variables;


# direct methods
.method public constructor <init>(Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;Lcom/oplus/fancyicon/data/Variables;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$Builder;->mBinder:Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;

    iput-object p2, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$Builder;->mVariables:Lcom/oplus/fancyicon/data/Variables;

    return-void
.end method


# virtual methods
.method public addVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$Builder;
    .registers 7

    new-instance v0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$ContentProviderVariable;

    iget-object v1, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$Builder;->mVariables:Lcom/oplus/fancyicon/data/Variables;

    invoke-direct {v0, p1, p2, v1}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$ContentProviderVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object p3, v0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$ContentProviderVariable;->mColumn:Ljava/lang/String;

    iput p4, v0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$ContentProviderVariable;->mRow:I

    iget-object p1, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$Builder;->mBinder:Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;

    invoke-virtual {p1, v0}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->addVariable(Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$ContentProviderVariable;)V

    return-object p0
.end method

.method public setArgs([Ljava/lang/String;)Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$Builder;
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$Builder;->mBinder:Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;

    iput-object p1, v0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mArgs:[Ljava/lang/String;

    return-object p0
.end method

.method public setColumns([Ljava/lang/String;)Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$Builder;
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$Builder;->mBinder:Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;

    iput-object p1, v0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mColumns:[Ljava/lang/String;

    return-object p0
.end method

.method public setCountName(Ljava/lang/String;)Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$Builder;
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$Builder;->mBinder:Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;

    iput-object p1, v0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mCountName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->createCountVar()V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$Builder;
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$Builder;->mBinder:Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;

    iput-object p1, v0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public setOrder(Ljava/lang/String;)Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$Builder;
    .registers 3

    iget-object v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$Builder;->mBinder:Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;

    iput-object p1, v0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mOrder:Ljava/lang/String;

    return-object p0
.end method

.method public setWhere(Ljava/lang/String;)Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$Builder;
    .registers 4

    iget-object v0, p0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder$Builder;->mBinder:Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;

    new-instance v1, Lcom/oplus/fancyicon/util/TextFormatter;

    invoke-direct {v1, p1}, Lcom/oplus/fancyicon/util/TextFormatter;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/oplus/fancyicon/data/binder/ContentProviderBinder;->mWhereFormatter:Lcom/oplus/fancyicon/util/TextFormatter;

    return-object p0
.end method
