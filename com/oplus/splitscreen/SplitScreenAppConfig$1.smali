.class Lcom/oplus/splitscreen/SplitScreenAppConfig$1;
.super Lcom/oplus/settings/OplusSettingsChangeListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/splitscreen/SplitScreenAppConfig;->registerDataFileChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/splitscreen/SplitScreenAppConfig;


# direct methods
.method public constructor <init>(Lcom/oplus/splitscreen/SplitScreenAppConfig;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/splitscreen/SplitScreenAppConfig$1;->this$0:Lcom/oplus/splitscreen/SplitScreenAppConfig;

    invoke-direct {p0, p2}, Lcom/oplus/settings/OplusSettingsChangeListener;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onSettingsChange(ZLjava/lang/String;I)V
    .registers 4

    iget-object p0, p0, Lcom/oplus/splitscreen/SplitScreenAppConfig$1;->this$0:Lcom/oplus/splitscreen/SplitScreenAppConfig;

    invoke-static {p0}, Lcom/oplus/splitscreen/SplitScreenAppConfig;->access$200(Lcom/oplus/splitscreen/SplitScreenAppConfig;)V

    return-void
.end method
