.class public final synthetic Lcom/android/launcher3/i1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/Launcher$OnWorkspaceLoadedCallback;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/OplusWorkspace;

.field public final synthetic b:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/OplusWorkspace;Ljava/util/function/Predicate;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/i1;->a:Lcom/android/launcher3/OplusWorkspace;

    iput-object p2, p0, Lcom/android/launcher3/i1;->b:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final onWorkspaceLoaded()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/i1;->a:Lcom/android/launcher3/OplusWorkspace;

    iget-object p0, p0, Lcom/android/launcher3/i1;->b:Ljava/util/function/Predicate;

    invoke-static {v0, p0}, Lcom/android/launcher3/OplusWorkspace;->N(Lcom/android/launcher3/OplusWorkspace;Ljava/util/function/Predicate;)V

    return-void
.end method
