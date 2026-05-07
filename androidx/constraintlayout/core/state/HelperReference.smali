.class public Landroidx/constraintlayout/core/state/HelperReference;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mHelperWidget:Landroidx/constraintlayout/core/widgets/HelperWidget;

.field public mReferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final mState:Landroidx/constraintlayout/core/state/State;

.field public final mType:Landroidx/constraintlayout/core/state/State$Helper;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/State$Helper;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/state/HelperReference;->mReferences:Ljava/util/ArrayList;

    iput-object p1, p0, Landroidx/constraintlayout/core/state/HelperReference;->mState:Landroidx/constraintlayout/core/state/State;

    iput-object p2, p0, Landroidx/constraintlayout/core/state/HelperReference;->mType:Landroidx/constraintlayout/core/state/State$Helper;

    return-void
.end method


# virtual methods
.method public varargs add([Ljava/lang/Object;)Landroidx/constraintlayout/core/state/HelperReference;
    .registers 3

    iget-object v0, p0, Landroidx/constraintlayout/core/state/HelperReference;->mReferences:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public apply()V
    .registers 1

    return-void
.end method

.method public getHelperWidget()Landroidx/constraintlayout/core/widgets/HelperWidget;
    .registers 1

    iget-object p0, p0, Landroidx/constraintlayout/core/state/HelperReference;->mHelperWidget:Landroidx/constraintlayout/core/widgets/HelperWidget;

    return-object p0
.end method

.method public getType()Landroidx/constraintlayout/core/state/State$Helper;
    .registers 1

    iget-object p0, p0, Landroidx/constraintlayout/core/state/HelperReference;->mType:Landroidx/constraintlayout/core/state/State$Helper;

    return-object p0
.end method

.method public setHelperWidget(Landroidx/constraintlayout/core/widgets/HelperWidget;)V
    .registers 2

    iput-object p1, p0, Landroidx/constraintlayout/core/state/HelperReference;->mHelperWidget:Landroidx/constraintlayout/core/widgets/HelperWidget;

    return-void
.end method
