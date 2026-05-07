.class public final synthetic Lcom/android/launcher3/views/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/views/h;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/views/h;

    invoke-direct {v0}, Lcom/android/launcher3/views/h;-><init>()V

    sput-object v0, Lcom/android/launcher3/views/h;->a:Lcom/android/launcher3/views/h;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 2

    invoke-static {p1}, Lcom/android/launcher3/views/OptionsPopupView;->f(Landroid/view/View;)Z

    move-result p0

    return p0
.end method
