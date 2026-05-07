.class public final synthetic Lcom/android/launcher/i0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/icons/anim/ViewAlphaAnimatorCallBacks;
.implements Lcom/android/launcher3/icons/BitmapRenderer;
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;
.implements Lcom/oplus/smartsdk/SmartAPICallback;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Bitmap;[ILandroid/graphics/Paint;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/i0;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/i0;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher/i0;->c:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/launcher/i0;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/UninstallRemoveAppPanel;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/ArrayList;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/i0;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/i0;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher/i0;->c:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/launcher/i0;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/BatchAddDrawerIconsTask;Lcom/android/launcher3/util/IntArray;Ljava/util/ArrayList;Lcom/android/launcher3/util/IntArray;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/i0;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/i0;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher/i0;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/launcher/i0;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/card/helper/NormalSmartEngine;Lcom/oplus/smartsdk/SmartEngineManager;Landroid/view/View;Lcom/oplus/smartsdk/SmartApiInfo;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/i0;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/i0;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher/i0;->c:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/launcher/i0;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/i0;->a:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher/i0;->b:Ljava/lang/Object;

    check-cast v1, [I

    iget-object v2, p0, Lcom/android/launcher/i0;->c:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Paint;

    iget-object p0, p0, Lcom/android/launcher/i0;->d:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/launcher3/graphics/ShadowDrawable;->a(Landroid/graphics/Bitmap;[ILandroid/graphics/Paint;Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V

    return-void
.end method

.method public execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/i0;->a:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/model/BatchAddDrawerIconsTask;

    iget-object v1, p0, Lcom/android/launcher/i0;->b:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/util/IntArray;

    iget-object v2, p0, Lcom/android/launcher/i0;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/launcher/i0;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/util/IntArray;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/launcher3/model/BatchAddDrawerIconsTask;->j(Lcom/android/launcher3/model/BatchAddDrawerIconsTask;Lcom/android/launcher3/util/IntArray;Ljava/util/ArrayList;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public onAnimationEnd()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/i0;->a:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/UninstallRemoveAppPanel;

    iget-object v1, p0, Lcom/android/launcher/i0;->b:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    iget-object v2, p0, Lcom/android/launcher/i0;->c:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object p0, p0, Lcom/android/launcher/i0;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, p0}, Lcom/android/launcher/UninstallRemoveAppPanel;->f(Lcom/android/launcher/UninstallRemoveAppPanel;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onCall(Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/i0;->a:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/card/helper/NormalSmartEngine;

    iget-object v1, p0, Lcom/android/launcher/i0;->b:Ljava/lang/Object;

    check-cast v1, Lcom/oplus/smartsdk/SmartEngineManager;

    iget-object v2, p0, Lcom/android/launcher/i0;->c:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    iget-object p0, p0, Lcom/android/launcher/i0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/smartsdk/SmartApiInfo;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/oplus/card/helper/NormalSmartEngine;->e(Lcom/oplus/card/helper/NormalSmartEngine;Lcom/oplus/smartsdk/SmartEngineManager;Landroid/view/View;Lcom/oplus/smartsdk/SmartApiInfo;Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void
.end method
