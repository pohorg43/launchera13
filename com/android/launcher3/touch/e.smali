.class public final synthetic Lcom/android/launcher3/touch/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/touch/e;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/touch/e;

    invoke-direct {v0}, Lcom/android/launcher3/touch/e;-><init>()V

    sput-object v0, Lcom/android/launcher3/touch/e;->a:Lcom/android/launcher3/touch/e;

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

    invoke-static {p1}, Lcom/android/launcher3/touch/ItemLongClickListener;->a(Landroid/view/View;)Z

    move-result p0

    return p0
.end method
