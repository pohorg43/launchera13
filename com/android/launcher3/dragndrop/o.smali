.class public final synthetic Lcom/android/launcher3/dragndrop/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/SafeCloseable;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/dragndrop/o;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/dragndrop/o;

    invoke-direct {v0}, Lcom/android/launcher3/dragndrop/o;-><init>()V

    sput-object v0, Lcom/android/launcher3/dragndrop/o;->a:Lcom/android/launcher3/dragndrop/o;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 1

    invoke-static {}, Lcom/android/launcher3/dragndrop/DraggableView;->b()V

    return-void
.end method
