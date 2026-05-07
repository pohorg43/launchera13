.class public final synthetic Lcom/android/launcher/j0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/icons/anim/ViewAlphaAnimatorCallBacks;
.implements Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;
.implements Lcom/android/launcher3/icons/BitmapRenderer;
.implements Lcom/android/launcher3/widget/LocalColorExtractor$Listener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/oplus/statistics/util/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/UninstallRemoveAppPanel;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/j0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/j0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/j0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher/j0;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/filter/DeepProtectedAppsManager;Lcom/android/launcher3/util/PackageUserKey;Ljava/util/function/Predicate;)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/j0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/j0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/j0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher/j0;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/icons/LauncherIcons;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/j0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/j0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/j0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher/j0;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/icons/LauncherIcons;Landroid/graphics/Bitmap;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .registers 5

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher/j0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/j0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/j0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher/j0;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/popup/ArrowPopup;Landroid/view/View;[Landroid/view/View;)V
    .registers 5

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher/j0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/j0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/j0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher/j0;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/settings/DeveloperOptionsFragment;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher/j0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/j0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/j0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher/j0;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher/j0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/j0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/j0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher/j0;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 4

    iget v0, p0, Lcom/android/launcher/j0;->a:I

    packed-switch v0, :pswitch_data_26

    goto :goto_16

    :pswitch_6  #0x2
    iget-object v0, p0, Lcom/android/launcher/j0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/icons/LauncherIcons;

    iget-object v1, p0, Lcom/android/launcher/j0;->c:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/android/launcher/j0;->d:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/icons/LauncherIcons;->b(Lcom/android/launcher3/icons/LauncherIcons;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V

    return-void

    :goto_16
    iget-object v0, p0, Lcom/android/launcher/j0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/icons/LauncherIcons;

    iget-object v1, p0, Lcom/android/launcher/j0;->c:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/android/launcher/j0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/icons/LauncherIcons;->a(Lcom/android/launcher3/icons/LauncherIcons;Landroid/graphics/Bitmap;Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/graphics/Canvas;)V

    return-void

    :pswitch_data_26
    .packed-switch 0x2
        :pswitch_6  #00000002
    .end packed-switch
.end method

.method public evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/j0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/filter/DeepProtectedAppsManager;

    iget-object v1, p0, Lcom/android/launcher/j0;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/util/PackageUserKey;

    iget-object p0, p0, Lcom/android/launcher/j0;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/Predicate;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->g(Lcom/android/launcher/filter/DeepProtectedAppsManager;Lcom/android/launcher3/util/PackageUserKey;Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public get()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/j0;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/launcher/j0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher/j0;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-static {v0, v1, p0}, Lcom/oplus/statistics/OplusTrack;->n(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onAnimationEnd()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/j0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/UninstallRemoveAppPanel;

    iget-object v1, p0, Lcom/android/launcher/j0;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    iget-object p0, p0, Lcom/android/launcher/j0;->d:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, v1, p0}, Lcom/android/launcher/UninstallRemoveAppPanel;->e(Lcom/android/launcher/UninstallRemoveAppPanel;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method public onColorsChanged(Landroid/util/SparseIntArray;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/j0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/popup/ArrowPopup;

    iget-object v1, p0, Lcom/android/launcher/j0;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget-object p0, p0, Lcom/android/launcher/j0;->d:Ljava/lang/Object;

    check-cast p0, [Landroid/view/View;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/popup/ArrowPopup;->b(Lcom/android/launcher3/popup/ArrowPopup;Landroid/view/View;[Landroid/view/View;Landroid/util/SparseIntArray;)V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/j0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/settings/DeveloperOptionsFragment;

    iget-object v1, p0, Lcom/android/launcher/j0;->c:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher/j0;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/settings/DeveloperOptionsFragment;->f(Lcom/android/launcher3/settings/DeveloperOptionsFragment;[Ljava/lang/String;Ljava/lang/String;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
