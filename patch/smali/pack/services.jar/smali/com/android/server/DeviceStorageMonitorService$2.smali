.class Lcom/android/server/DeviceStorageMonitorService$2;
.super Landroid/content/BroadcastReceiver;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceStorageMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceStorageMonitorService;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/server/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 154
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.zte.diskcleanup.apksmanager.DiskNotFull"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    # invokes: Lcom/android/server/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/DeviceStorageMonitorService;->access$100(Lcom/android/server/DeviceStorageMonitorService;ZJ)V

    .line 158
    :cond_0
    return-void
.end method
