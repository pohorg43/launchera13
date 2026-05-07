.class public final synthetic Lcom/android/quickstep/uioverrides/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:[F


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;ZZ[F)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/uioverrides/b;->a:Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;

    iput-boolean p2, p0, Lcom/android/quickstep/uioverrides/b;->b:Z

    iput-boolean p3, p0, Lcom/android/quickstep/uioverrides/b;->c:Z

    iput-object p4, p0, Lcom/android/quickstep/uioverrides/b;->d:[F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/quickstep/uioverrides/b;->a:Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;

    iget-boolean v1, p0, Lcom/android/quickstep/uioverrides/b;->b:Z

    iget-boolean v2, p0, Lcom/android/quickstep/uioverrides/b;->c:Z

    iget-object p0, p0, Lcom/android/quickstep/uioverrides/b;->d:[F

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->c(Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;ZZ[FLjava/lang/Boolean;)V

    return-void
.end method
