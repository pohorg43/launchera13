.class public final synthetic Lcom/oplus/quickstep/utils/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/views/TaskView;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/android/quickstep/views/OplusRecentsViewImpl;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/TaskView;ZLcom/android/quickstep/views/OplusRecentsViewImpl;III)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/utils/b;->a:Lcom/android/quickstep/views/TaskView;

    iput-boolean p2, p0, Lcom/oplus/quickstep/utils/b;->b:Z

    iput-object p3, p0, Lcom/oplus/quickstep/utils/b;->c:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iput p4, p0, Lcom/oplus/quickstep/utils/b;->d:I

    iput p5, p0, Lcom/oplus/quickstep/utils/b;->e:I

    iput p6, p0, Lcom/oplus/quickstep/utils/b;->f:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 9

    iget-object v0, p0, Lcom/oplus/quickstep/utils/b;->a:Lcom/android/quickstep/views/TaskView;

    iget-boolean v1, p0, Lcom/oplus/quickstep/utils/b;->b:Z

    iget-object v2, p0, Lcom/oplus/quickstep/utils/b;->c:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    iget v3, p0, Lcom/oplus/quickstep/utils/b;->d:I

    iget v4, p0, Lcom/oplus/quickstep/utils/b;->e:I

    iget v5, p0, Lcom/oplus/quickstep/utils/b;->f:I

    move-object v6, p1

    check-cast v6, Ljava/lang/Boolean;

    invoke-static/range {v0 .. v6}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->e(Lcom/android/quickstep/views/TaskView;ZLcom/android/quickstep/views/OplusRecentsViewImpl;IIILjava/lang/Boolean;)V

    return-void
.end method
