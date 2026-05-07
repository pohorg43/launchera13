.class public final synthetic Lcom/android/launcher3/widget/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/icons/BitmapRenderer;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;

.field public final synthetic b:Z

.field public final synthetic c:Landroid/graphics/drawable/Drawable;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

.field public final synthetic g:Lcom/android/launcher3/DeviceProfile;

.field public final synthetic h:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;ZLandroid/graphics/drawable/Drawable;IILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/DeviceProfile;F)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/c;->a:Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;

    iput-boolean p2, p0, Lcom/android/launcher3/widget/c;->b:Z

    iput-object p3, p0, Lcom/android/launcher3/widget/c;->c:Landroid/graphics/drawable/Drawable;

    iput p4, p0, Lcom/android/launcher3/widget/c;->d:I

    iput p5, p0, Lcom/android/launcher3/widget/c;->e:I

    iput-object p6, p0, Lcom/android/launcher3/widget/c;->f:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    iput-object p7, p0, Lcom/android/launcher3/widget/c;->g:Lcom/android/launcher3/DeviceProfile;

    iput p8, p0, Lcom/android/launcher3/widget/c;->h:F

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .registers 11

    iget-object v0, p0, Lcom/android/launcher3/widget/c;->a:Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;

    iget-boolean v1, p0, Lcom/android/launcher3/widget/c;->b:Z

    iget-object v2, p0, Lcom/android/launcher3/widget/c;->c:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/launcher3/widget/c;->d:I

    iget v4, p0, Lcom/android/launcher3/widget/c;->e:I

    iget-object v5, p0, Lcom/android/launcher3/widget/c;->f:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    iget-object v6, p0, Lcom/android/launcher3/widget/c;->g:Lcom/android/launcher3/DeviceProfile;

    iget v7, p0, Lcom/android/launcher3/widget/c;->h:F

    move-object v8, p1

    invoke-static/range {v0 .. v8}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->a(Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;ZLandroid/graphics/drawable/Drawable;IILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/DeviceProfile;FLandroid/graphics/Canvas;)V

    return-void
.end method
