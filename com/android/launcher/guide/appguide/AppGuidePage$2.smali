.class Lcom/android/launcher/guide/appguide/AppGuidePage$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/guide/appguide/AppGuidePage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/guide/appguide/AppGuidePage;


# direct methods
.method public constructor <init>(Lcom/android/launcher/guide/appguide/AppGuidePage;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/guide/appguide/AppGuidePage$2;->this$0:Lcom/android/launcher/guide/appguide/AppGuidePage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage$2;->this$0:Lcom/android/launcher/guide/appguide/AppGuidePage;

    invoke-static {v0}, Lcom/android/launcher/guide/appguide/AppGuidePage;->access$100(Lcom/android/launcher/guide/appguide/AppGuidePage;)Z

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage$2;->this$0:Lcom/android/launcher/guide/appguide/AppGuidePage;

    invoke-static {v0}, Lcom/android/launcher/guide/appguide/AppGuidePage;->access$200(Lcom/android/launcher/guide/appguide/AppGuidePage;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage$2;->this$0:Lcom/android/launcher/guide/appguide/AppGuidePage;

    invoke-static {v0}, Lcom/android/launcher/guide/appguide/AppGuidePage;->access$300(Lcom/android/launcher/guide/appguide/AppGuidePage;)V

    iget-object p0, p0, Lcom/android/launcher/guide/appguide/AppGuidePage$2;->this$0:Lcom/android/launcher/guide/appguide/AppGuidePage;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher/guide/appguide/AppGuidePage;->access$202(Lcom/android/launcher/guide/appguide/AppGuidePage;Z)Z

    :cond_18
    return-void
.end method
