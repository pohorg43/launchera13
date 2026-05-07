.class public Landroidx/constraintlayout/core/state/helpers/ChainReference;
.super Landroidx/constraintlayout/core/state/HelperReference;
.source ""


# instance fields
.field public mBias:F

.field public mStyle:Landroidx/constraintlayout/core/state/State$Chain;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/State$Helper;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/core/state/HelperReference;-><init>(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/State$Helper;)V

    const/high16 p1, 0x3f000000  # 0.5f

    iput p1, p0, Landroidx/constraintlayout/core/state/helpers/ChainReference;->mBias:F

    sget-object p1, Landroidx/constraintlayout/core/state/State$Chain;->SPREAD:Landroidx/constraintlayout/core/state/State$Chain;

    iput-object p1, p0, Landroidx/constraintlayout/core/state/helpers/ChainReference;->mStyle:Landroidx/constraintlayout/core/state/State$Chain;

    return-void
.end method


# virtual methods
.method public bias(F)V
    .registers 2

    iput p1, p0, Landroidx/constraintlayout/core/state/helpers/ChainReference;->mBias:F

    return-void
.end method

.method public getBias()F
    .registers 1

    iget p0, p0, Landroidx/constraintlayout/core/state/helpers/ChainReference;->mBias:F

    return p0
.end method

.method public getStyle()Landroidx/constraintlayout/core/state/State$Chain;
    .registers 1

    sget-object p0, Landroidx/constraintlayout/core/state/State$Chain;->SPREAD:Landroidx/constraintlayout/core/state/State$Chain;

    return-object p0
.end method

.method public style(Landroidx/constraintlayout/core/state/State$Chain;)V
    .registers 2

    iput-object p1, p0, Landroidx/constraintlayout/core/state/helpers/ChainReference;->mStyle:Landroidx/constraintlayout/core/state/State$Chain;

    return-void
.end method
