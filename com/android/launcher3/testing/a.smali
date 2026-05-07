.class public final synthetic Lcom/android/launcher3/testing/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;Lcom/android/launcher3/util/MainThreadInitializedObject;Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/testing/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/testing/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/testing/a;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/testing/a;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/Function;Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/testing/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/testing/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/testing/a;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/testing/a;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    iget v0, p0, Lcom/android/launcher3/testing/a;->a:I

    packed-switch v0, :pswitch_data_28

    goto :goto_17

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/testing/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Supplier;

    iget-object v1, p0, Lcom/android/launcher3/testing/a;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/Function;

    iget-object p0, p0, Lcom/android/launcher3/testing/a;->d:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/testing/TestInformationHandler;->j(Ljava/util/function/Supplier;Ljava/util/function/Function;Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :goto_17
    iget-object v0, p0, Lcom/android/launcher3/testing/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;

    iget-object v1, p0, Lcom/android/launcher3/testing/a;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/launcher3/testing/a;->d:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;->a(Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;Lcom/android/launcher3/util/MainThreadInitializedObject;Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
