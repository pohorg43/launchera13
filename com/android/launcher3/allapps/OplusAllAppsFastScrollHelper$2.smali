.class Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper$2;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper$2;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;

    invoke-static {v0}, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->access$200(Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->access$102(Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper$2;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->access$302(Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;Z)Z

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper$2;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;

    invoke-static {v0, v1}, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->access$402(Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;Z)Z

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper$2;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;

    invoke-static {p0}, Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;->access$500(Lcom/android/launcher3/allapps/OplusAllAppsFastScrollHelper;)V

    return-void
.end method
