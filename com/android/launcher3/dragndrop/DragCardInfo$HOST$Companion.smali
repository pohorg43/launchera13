.class public final Lcom/android/launcher3/dragndrop/DragCardInfo$HOST$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/dragndrop/DragCardInfo$HOST;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lcom/android/launcher3/dragndrop/DragCardInfo$HOST$Companion;

.field public static final ASSISTANT:I = 0x0

.field public static final LAUNCHER:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/dragndrop/DragCardInfo$HOST$Companion;

    invoke-direct {v0}, Lcom/android/launcher3/dragndrop/DragCardInfo$HOST$Companion;-><init>()V

    sput-object v0, Lcom/android/launcher3/dragndrop/DragCardInfo$HOST$Companion;->$$INSTANCE:Lcom/android/launcher3/dragndrop/DragCardInfo$HOST$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
