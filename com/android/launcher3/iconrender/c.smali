.class public final synthetic Lcom/android/launcher3/iconrender/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/data/WorkspaceItemInfo;ZI)V
    .registers 5

    iput p3, p0, Lcom/android/launcher3/iconrender/c;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/iconrender/c;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/launcher3/iconrender/c;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/appswitch/AppSwitchController;Z)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/iconrender/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/iconrender/c;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/android/launcher3/iconrender/c;->c:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/iconrender/c;->a:I

    packed-switch v0, :pswitch_data_2a

    goto :goto_1e

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/launcher3/iconrender/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-boolean p0, p0, Lcom/android/launcher3/iconrender/c;->c:Z

    check-cast p1, Lcom/android/launcher3/iconrender/ITitleRenderer;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/iconrender/RenderManager;->b(Lcom/android/launcher3/model/data/WorkspaceItemInfo;ZLcom/android/launcher3/iconrender/ITitleRenderer;)V

    return-void

    :pswitch_12  #0x0
    iget-object v0, p0, Lcom/android/launcher3/iconrender/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-boolean p0, p0, Lcom/android/launcher3/iconrender/c;->c:Z

    check-cast p1, Lcom/android/launcher3/iconrender/IIconRenderer;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/iconrender/RenderManager;->g(Lcom/android/launcher3/model/data/WorkspaceItemInfo;ZLcom/android/launcher3/iconrender/IIconRenderer;)V

    return-void

    :goto_1e
    iget-object v0, p0, Lcom/android/launcher3/iconrender/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/quickstep/appswitch/AppSwitchController;

    iget-boolean p0, p0, Lcom/android/launcher3/iconrender/c;->c:Z

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, p0, p1}, Lcom/oplus/quickstep/appswitch/AppSwitchController;->a(Lcom/oplus/quickstep/appswitch/AppSwitchController;ZLjava/util/ArrayList;)V

    return-void

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_12  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
