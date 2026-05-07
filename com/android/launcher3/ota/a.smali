.class public final synthetic Lcom/android/launcher3/ota/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/util/List;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher/mode/LauncherMode;Landroid/content/Context;Ljava/util/List;Lcom/android/launcher3/util/IntArray;Ljava/util/List;Lcom/android/launcher3/LauncherAppState;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 10

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/ota/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/ota/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/ota/a;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/ota/a;->d:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/launcher3/ota/a;->e:Ljava/util/List;

    iput-object p5, p0, Lcom/android/launcher3/ota/a;->f:Ljava/lang/Object;

    iput-object p6, p0, Lcom/android/launcher3/ota/a;->g:Ljava/util/List;

    iput-object p7, p0, Lcom/android/launcher3/ota/a;->h:Ljava/lang/Object;

    iput-object p8, p0, Lcom/android/launcher3/ota/a;->i:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/os/Handler;Lcom/android/launcher3/popup/PopupContainerWithArrow;Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/List;)V
    .registers 10

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/ota/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/ota/a;->e:Ljava/util/List;

    iput-object p2, p0, Lcom/android/launcher3/ota/a;->d:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/launcher3/ota/a;->b:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/launcher3/ota/a;->c:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/launcher3/ota/a;->f:Ljava/lang/Object;

    iput-object p6, p0, Lcom/android/launcher3/ota/a;->h:Ljava/lang/Object;

    iput-object p7, p0, Lcom/android/launcher3/ota/a;->i:Ljava/lang/Object;

    iput-object p8, p0, Lcom/android/launcher3/ota/a;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 19

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher3/ota/a;->a:I

    packed-switch v1, :pswitch_data_52

    goto :goto_2b

    :pswitch_8  #0x0
    iget-object v1, v0, Lcom/android/launcher3/ota/a;->b:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/model/BgDataModel;

    iget-object v1, v0, Lcom/android/launcher3/ota/a;->c:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Lcom/android/launcher/mode/LauncherMode;

    iget-object v4, v0, Lcom/android/launcher3/ota/a;->d:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/launcher3/ota/a;->e:Ljava/util/List;

    iget-object v1, v0, Lcom/android/launcher3/ota/a;->f:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Lcom/android/launcher3/util/IntArray;

    iget-object v7, v0, Lcom/android/launcher3/ota/a;->g:Ljava/util/List;

    iget-object v1, v0, Lcom/android/launcher3/ota/a;->h:Ljava/lang/Object;

    move-object v8, v1

    check-cast v8, Lcom/android/launcher3/LauncherAppState;

    iget-object v0, v0, Lcom/android/launcher3/ota/a;->i:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static/range {v2 .. v9}, Lcom/android/launcher3/ota/AddCardUtils;->b(Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher/mode/LauncherMode;Landroid/content/Context;Ljava/util/List;Lcom/android/launcher3/util/IntArray;Ljava/util/List;Lcom/android/launcher3/LauncherAppState;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    return-void

    :goto_2b
    iget-object v10, v0, Lcom/android/launcher3/ota/a;->e:Ljava/util/List;

    iget-object v11, v0, Lcom/android/launcher3/ota/a;->d:Landroid/content/Context;

    iget-object v1, v0, Lcom/android/launcher3/ota/a;->b:Ljava/lang/Object;

    move-object v12, v1

    check-cast v12, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v1, v0, Lcom/android/launcher3/ota/a;->c:Ljava/lang/Object;

    move-object v13, v1

    check-cast v13, Landroid/os/Handler;

    iget-object v1, v0, Lcom/android/launcher3/ota/a;->f:Ljava/lang/Object;

    move-object v14, v1

    check-cast v14, Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iget-object v1, v0, Lcom/android/launcher3/ota/a;->h:Ljava/lang/Object;

    move-object v15, v1

    check-cast v15, Landroid/content/ComponentName;

    iget-object v1, v0, Lcom/android/launcher3/ota/a;->i:Ljava/lang/Object;

    move-object/from16 v16, v1

    check-cast v16, Landroid/os/UserHandle;

    iget-object v0, v0, Lcom/android/launcher3/ota/a;->g:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-static/range {v10 .. v17}, Lcom/android/launcher3/popup/PopupPopulator;->c(Ljava/util/List;Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/os/Handler;Lcom/android/launcher3/popup/PopupContainerWithArrow;Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/List;)V

    return-void

    nop

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_8  #00000000
    .end packed-switch
.end method
