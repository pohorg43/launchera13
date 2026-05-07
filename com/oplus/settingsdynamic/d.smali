.class public final synthetic Lcom/oplus/settingsdynamic/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/settingsdynamic/SettingsDynamicController;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/settingsdynamic/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/settingsdynamic/d;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/oplus/settingsdynamic/d;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/oplus/settingsdynamic/d;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/splitscreen/DividerRotationTips;Landroid/graphics/Rect;Landroid/view/SurfaceControl;)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/settingsdynamic/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/settingsdynamic/d;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/oplus/settingsdynamic/d;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/oplus/settingsdynamic/d;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/statistics/strategy/ChattyEventTracker;Landroid/content/Context;Lcom/oplus/statistics/data/CommonBean;)V
    .registers 5

    const/4 v0, 0x2

    iput v0, p0, Lcom/oplus/settingsdynamic/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/settingsdynamic/d;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/oplus/settingsdynamic/d;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/oplus/settingsdynamic/d;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/oplus/settingsdynamic/d;->a:I

    packed-switch v0, :pswitch_data_36

    goto :goto_26

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/oplus/settingsdynamic/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/splitscreen/DividerRotationTips;

    iget-object v1, p0, Lcom/oplus/settingsdynamic/d;->c:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/oplus/settingsdynamic/d;->d:Ljava/lang/Object;

    check-cast p0, Landroid/view/SurfaceControl;

    invoke-static {v0, v1, p0}, Lcom/oplus/splitscreen/DividerRotationTips;->d(Lcom/oplus/splitscreen/DividerRotationTips;Landroid/graphics/Rect;Landroid/view/SurfaceControl;)V

    return-void

    :pswitch_16  #0x0
    iget-object v0, p0, Lcom/oplus/settingsdynamic/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/settingsdynamic/SettingsDynamicController;

    iget-object v1, p0, Lcom/oplus/settingsdynamic/d;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/settingsdynamic/d;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->n(Lcom/oplus/settingsdynamic/SettingsDynamicController;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_26
    iget-object v0, p0, Lcom/oplus/settingsdynamic/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/statistics/strategy/ChattyEventTracker;

    iget-object v1, p0, Lcom/oplus/settingsdynamic/d;->c:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget-object p0, p0, Lcom/oplus/settingsdynamic/d;->d:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/statistics/data/CommonBean;

    invoke-static {v0, v1, p0}, Lcom/oplus/statistics/strategy/ChattyEventTracker;->c(Lcom/oplus/statistics/strategy/ChattyEventTracker;Landroid/content/Context;Lcom/oplus/statistics/data/CommonBean;)V

    return-void

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_16  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
