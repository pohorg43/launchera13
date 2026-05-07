.class public abstract Lcom/oplus/fancyicon/data/binder/VariableBinder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;
    }
.end annotation


# instance fields
.field public mRenderThreadPaused:Z

.field public mRenderThreadStoped:Z

.field public mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/CharSequence;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public init()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRenderThreadPaused:Z

    iput-boolean v0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRenderThreadStoped:Z

    return-void
.end method

.method public onRenderThreadStoped()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRenderThreadStoped:Z

    return-void
.end method

.method public pause()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRenderThreadPaused:Z

    return-void
.end method

.method public refresh()V
    .registers 1

    return-void
.end method

.method public resume()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRenderThreadPaused:Z

    return-void
.end method

.method public tick()V
    .registers 1

    return-void
.end method
