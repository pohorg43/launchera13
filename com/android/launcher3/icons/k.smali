.class public final synthetic Lcom/android/launcher3/icons/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/icons/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/icons/k;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/icons/k;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/pm/LauncherActivityInfo;I)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/icons/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/icons/k;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/icons/k;->c:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/android/launcher3/icons/k;->a:I

    packed-switch v0, :pswitch_data_1c

    goto :goto_11

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/icons/k;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/LauncherActivityInfo;

    iget p0, p0, Lcom/android/launcher3/icons/k;->c:I

    invoke-static {v0, p0}, Lcom/android/launcher3/icons/IconProvider;->a(Landroid/content/pm/LauncherActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :goto_11
    iget-object v0, p0, Lcom/android/launcher3/icons/k;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget p0, p0, Lcom/android/launcher3/icons/k;->c:I

    invoke-static {v0, p0}, Lcom/android/launcher3/model/StringCache;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
