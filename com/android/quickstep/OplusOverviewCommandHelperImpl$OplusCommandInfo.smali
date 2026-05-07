.class public final Lcom/android/quickstep/OplusOverviewCommandHelperImpl$OplusCommandInfo;
.super Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/OplusOverviewCommandHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OplusCommandInfo"
.end annotation


# instance fields
.field private fromGesture:Z


# direct methods
.method public constructor <init>(IZ)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;-><init>(I)V

    iput-boolean p2, p0, Lcom/android/quickstep/OplusOverviewCommandHelperImpl$OplusCommandInfo;->fromGesture:Z

    return-void
.end method


# virtual methods
.method public final getFromGesture()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/OplusOverviewCommandHelperImpl$OplusCommandInfo;->fromGesture:Z

    return p0
.end method

.method public final setFromGesture(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/OplusOverviewCommandHelperImpl$OplusCommandInfo;->fromGesture:Z

    return-void
.end method
